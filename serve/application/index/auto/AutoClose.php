<?php

namespace app\index\auto;

use app\index\model\CapitalFlow;
use app\index\model\Deal;
use app\index\model\Depot;
use app\index\model\Entrust;
use app\index\model\UserAccount;
use app\index\nozzle\OuterDisc;
use think\Controller;
use think\Request;

class AutoClose extends Controller
{
    private $Deal;
    private $Depot;
    private $Entrust;
    private $CapitalFlow;
    private $UserAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Depot = new Depot();
        $this->Entrust = new Entrust();
        $this->Deal = new Deal();
        $this->CapitalFlow = new CapitalFlow();
        $this->UserAccount = new UserAccount();
    }

    public function index()
    {
        $map['surplus|frozen'] = array('neq', 0);
        $list = $this->Depot->relation(array('futures'))->where($map)->select()->toArray();
        foreach ($list as $key => $value) {
            $stock = array('short' => $value['short'], 'code' => $value['code'], 'name' => $value['name']);
            $price = $this->code_price($value['short']);
            $this->contract_close($value['uid'], $price, $value['surplus'], $stock, $value);
        }
    }

    /**
     * 平仓信息处理
     * @param $id int 用户id
     * @param $price float 成交价格
     * @param $number int 委托手数
     * @param $contract array 合约信息
     * @param $depot array 持仓信息
     */
    private function contract_close($id, $price, $number, $contract, $depot)
    {
        $futures = $depot['futures'];
        $fee = $futures['sell_fee'] * $number;
        $bond = $futures['bond'] * $number;
        $account = $this->UserAccount->where(array('uid' => $id))->find();
        $price_array['deal_price'] = $price;
        $price_array['entrust_price'] = $price;
        $price_array['cost_price'] = $depot['price'];
        $profit = profit_loss($futures['wave_spot'], $futures['wave_price'], $price, $depot['price'], $number, $depot['direction']);
        $this->UserAccount->startTrans();
        $res1 = $this->UserAccount->deal_sell($account, $bond, $profit, $fee);
        $res3 = $this->entrust_add_log($id, $number, $price, $fee, $bond, 1, $depot['direction'], 0, $contract, $futures, $depot);
        $res2 = $this->Deal->add_log($id, $res3, $futures['id'], $contract, $number, $price_array, 1, 1, $depot['direction'], $fee, $bond, 0, $depot);
        $res4 = $this->entrust_sell_contract($depot, $number, $price, $profit, $fee, $bond);
        $res5 = $this->CapitalFlow->deal_sell($account, $bond, $profit, $fee);
        $res6 = $this->Deal->modify_buy_log($id, $depot['direction'], $contract['name'], $number, $price);
        if ($res1 && $res2 && $res3 && $res4 && $res5 && $res6) {
            $this->UserAccount->commit();
        } else {
            $this->UserAccount->rollback();
        }
    }

    /**
     * @param $list
     * @param $number
     * @param $price
     * @param $profit
     * @param $fee
     * @param $bond
     * @return $this
     */
    public function entrust_sell_contract($list, $number, $price, $profit, $fee, $bond)
    {
        $map['id'] = $list['id'];
        $map['price'] = 0;
        $map['average'] = 0;
        $map['cost'] = 0;
        $map['surplus_total'] = 0;
        $map['cost_total'] = 0;
        $map['frozen_total'] = 0;
        $map['surplus'] = $list['surplus'] - $number;
        $map['finish'] = $list['finish'] + $number;
        $map['profit_loss'] = $list['profit_loss'] + $profit;
        $map['bond_total'] = $list['bond_total'] - $bond;
        $map['fee_total'] = $list['fee_total'] + $fee;
        $map['sell_total'] = $list['sell_total'] + $number * $price;
        $map['modify_time'] = time();
        return $this->Depot->update($map);
    }

    public function entrust_add_log($id, $number, $price, $fee, $bond, $mold, $direction, $classify, $contract, $futures, $data)
    {
        $map['uid'] = $id;
        $map['order'] = rand_order($id);
        $map['short'] = $contract['short'];
        $map['code'] = $contract['code'];
        $map['name'] = $contract['name'];
        $map['number'] = $number;
        $map['surplus'] = 0;
        $map['finish'] = $number;
        $map['entrust_price'] = $price;
        $map['average_price'] = $price;
        $map['cost_price'] = $price;
        $map['fee_total'] = $fee;
        $map['frozen_fee'] = 0;
        $map['bond_total'] = $bond;
        $map['frozen_bond'] = 0;
        $map['total'] = $number * $price;
        $map['mold'] = $mold;
        $map['direction'] = $direction;
        $map['price_type'] = $classify;
        if ($mold == 0) {
            $map['trade_type'] = $direction ? 1 : 0;
        } else {
            $map['trade_type'] = $direction ? 3 : 2;
        }
        $map['status'] = 2;
        $map['time'] = time();
        $map['finish_time'] = time();
        $map['agent'] = $data['agent'];
        $map['staff'] = $data['staff'];
        $map['future'] = $futures['id'];
        $map['bond_ratio'] = $futures['bond'];
        $map['fee'] = $mold == 0 ? $futures['buy_fee'] : $futures['sell_fee'];
        return $this->Entrust->insertGetId($map);
    }

    /**
     * 查询合约价格最后收盘价格
     * @param $code string 合约代码
     * @return float
     */
    private function code_price($code)
    {
        $outer_disc = new OuterDisc();
        $list = $outer_disc->market_detail($code);
        return floatval($list['close']);
    }
}