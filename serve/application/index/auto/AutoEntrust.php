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

class AutoEntrust extends Controller
{
    private $Entrust;
    private $Deal;
    private $Depot;
    private $CapitalFlow;
    private $UserAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Entrust = new Entrust();
        $this->Deal = new Deal();
        $this->Depot = new Depot();
        $this->CapitalFlow = new CapitalFlow();
        $this->UserAccount = new UserAccount();
    }

    public function index()
    {
        $map['surplus'] = array('neq', 0);
        $map['status'] = array('neq', 2);
        $list = $this->Entrust->relation('futures')->where($map)->select();
        foreach ($list as $key => $value) {
            $price = $this->code_price($value['short']);
            $stock = array('short' => $value['short'], 'code' => $value['code'], 'name' => $value['name']);
            if ($value['mold'] == 0) {
                if (intval($price) && $price <= $value['entrust_price']) {
                    $this->contract_open($value['uid'], $price, $value['surplus'], $stock, $value);
                }
            } else {
                if (intval($price) && $price >= $value['entrust_price']) {
                    if ($value['direction'] == 1) {
                        $this->contract_close($value['uid'], $price, $value['surplus'], $stock, $value);
                    } else {
                        $this->contract_close($value['uid'], $value['entrust_price'], $value['surplus'], $stock, $value);
                    }
                }
            }
        }
    }

    /**
     * 平仓信息处理
     * @param $id int 用户id
     * @param $price float 成交价格
     * @param $number int 委托手数
     * @param $stock array 合约信息
     * @param $entrust array 委托信息
     */
    private function contract_close($id, $price, $number, $stock, $entrust)
    {
        $futures = $entrust['futures'];
        $fee = $entrust['fee'] * $number;
        $bond = $entrust['bond_ratio'] * $number;
        $account = $this->UserAccount->where(array('uid' => $id))->find();
        $depot = $this->depot_query($id, $stock['name'], $entrust['direction']);
        $price_array['deal_price'] = $price;
        $price_array['entrust_price'] = $entrust['entrust_price'];
        $price_array['cost_price'] = $depot['price'];
        $profit = profit_loss($futures['wave_spot'], $futures['wave_price'], $price, $depot['price'], $number, $depot['direction']);
        $this->UserAccount->startTrans();
        $res1 = $this->UserAccount->deal_sell($account, $bond, $profit, $fee);
        $res2 = $this->Deal->add_log($id, $entrust['id'], $futures['id'], $stock, $number, $price_array, $entrust['mold'], 1, $entrust['direction'], $fee, $bond, $entrust['price_type'], $entrust);
        $res3 = $this->Entrust->entrust_finish($entrust, $number, $price, $fee, $bond);
        $res4 = $this->Depot->depot_modify_log($depot, $number, $price, $profit, $fee, $bond);
        $res5 = $this->CapitalFlow->deal_sell($account, $bond, $profit, $fee);
        $res6 = $this->Deal->modify_buy_log($id, $depot['direction'], $stock['name'], $number, $price);
        if ($res1 && $res2 && $res3 && $res4 && $res5 && $res6) {
            $this->UserAccount->commit();
        } else {
            $this->UserAccount->rollback();
        }
    }

    /**
     * 查询单股票持仓信息
     * @param $id int 用户ID
     * @param $name string 信息代理
     * @param $direction int 方向
     * @return array|false|\PDOStatement|string|
     */
    public function depot_query($id, $name, $direction)
    {
        $map = array('uid' => $id, 'name' => $name, 'direction' => $direction, 'frozen' => array('neq', 0));
        return $this->Depot->where($map)->find();
    }


    /**
     * 开仓信息处理
     * @param $id int 用户id
     * @param $price float 成交价格
     * @param $number int 委托手数
     * @param $stock array 合约信息
     * @param $entrust array 委托信息
     */
    private function contract_open($id, $price, $number, $stock, $entrust)
    {
        $futures = $entrust['futures'];
        $fee = $entrust['fee'] * $number;
        $bond = $entrust['bond_ratio'] * $number;
        $price_array['deal_price'] = $price;
        $price_array['entrust_price'] = $entrust['entrust_price'];
        $price_array['cost_price'] = 0;
        $account = $this->UserAccount->where(array('uid' => $id))->find();
        $this->UserAccount->startTrans();
        $res1 = $this->UserAccount->deal_buy($account, $bond, $fee);
        $res2 = $this->Deal->add_log($id, $entrust['id'], $futures['id'], $stock, $number, $price_array, $entrust['mold'], 0, $entrust['direction'], $fee, $bond, $entrust['price_type'], $entrust);
        $res3 = $this->Entrust->entrust_finish($entrust, $number, $price, $fee, $bond);
        $res4 = $this->Depot->add_log($id, $futures['id'], $number, $price, $entrust['direction'], $stock, $fee, $bond, $entrust);
        $res5 = $this->CapitalFlow->deal_buy($account, $bond, $fee);
        if ($res1 && $res2 && $res3 && $res4 && $res5) {
            $this->UserAccount->commit();
        } else {
            $this->UserAccount->rollback();
        }
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
        return $list ? floatval($list['close']) : 0;
    }
}








