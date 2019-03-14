<?php

namespace app\index\controller;

use app\index\model\CapitalFlow;
use app\index\model\Closed;
use app\index\model\Contract;
use app\index\model\CoreSet;
use app\index\model\Entrust;
use app\index\model\Futures;
use app\index\model\Quotation;
use app\index\model\UserAccount;
use think\Request;

class TradeBuy extends Common
{
    private $Futures;
    private $Entrust;
    private $CoreSet;
    private $Closed;
    private $Contract;
    private $Quotation;
    private $UserAccount;
    private $CapitalFlow;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Futures = new Futures();
        $this->Entrust = new Entrust();
        $this->Closed = new Closed();
        $this->CoreSet = new CoreSet();
        $this->Contract = new Contract();
        $this->Quotation = new Quotation();
        $this->UserAccount = new UserAccount();
        $this->CapitalFlow = new CapitalFlow();
    }

    /**
     * 购买股票
     * 购买价格高于当前价格,等待成交。
     * 购买价格低于当前价格,按当前价格成交
     * @param int $id int
     * @param array $data
     * @return \think\response\Json
     */
    public function index($id = 1, $data = array())
    {
        $code = empty($data['code']) ? '美白银1903' : $data['code'];//期货代码
        $price = empty($data['price']) ? '15.765' : floatval($data['price']); //委托价格
        $number = empty($data['number']) ? 1 : intval($data['number']);//委托手数
        $mold = empty($data['mold']) ? 0 : $data['mold'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $classify = empty($data['classify']) ? 0 : $data['classify']; // 0 限价 1：最新价 2：对手价 3：挂单价 4:快速
        if ($number < 1) {
            $r = msg_handle('最少委托1手', 0);
        } else if (empty($code)) {
            $r = msg_handle('请输入期货代码', 0);
        } elseif (!in_array($classify, array(0, 1, 2, 3, 4))) {
            $r = msg_handle('请选择价位模式', 0);
        } elseif ($mold != 0 && $mold != 1) {
            $r = msg_handle('请选择委托类型', 0);
        } elseif (empty($number)) {
            $r = msg_handle('请选择交易手数', 0);
        } else {
            $contract = $this->Contract->relation(array('futures'))->where(array('status' => 1, 'name|short|code' => $code))->find();
            $basic = $this->CoreSet->query_find();
            if ($this->trade_time($contract['futures'], $basic['season']) == 0) {
                $r = msg_handle('休市时间,无法交易', 0);
            } else {
                $classify = empty($classify) ? 0 : $classify; // 0 限价 1：最新价 2：对手价 3：挂单价 4:快速价
                $price = $this->classify_price($contract['short'], $classify, $price);
                if (empty($price)) {
                    $r = msg_handle('开仓价格不能为空', 0);
                } else {
                    $r = $this->data_handle($id, $contract, $contract['futures'], $mold, $classify, $price, $number);
                }
            }
        }
        return $r;
    }

    /**
     * 开仓委托数据处理
     * @param $id int 用户id
     * @param $contract array 合约信息
     * @param $futures array  品种信息
     * @param $direction int 委托方向
     * @param $classify int 价格类型
     * @param $price float 委托价格
     * @param $number int 委托数量
     * @return array
     */
    private function data_handle($id, $contract, $futures, $direction, $classify, $price, $number)
    {
        $total = $this->calculation_deal($number, $futures['bond'], $futures['buy_fee']);
        $account = $this->UserAccount->query_find($id);
        if ($total > $account['account']) {
            $r = msg_handle('你的账户可用资金不足，请及时充值！', 0);
        } else {
            $bond = $number * $futures['bond'];
            $fee = $number * $futures['buy_fee'];
            $this->UserAccount->startTrans();
            $res1 = $this->UserAccount->entrust_buy($account, $bond, $fee);
            $res2 = $this->Entrust->add_log($id, $number, $price, $fee, $bond, 0, $direction, $classify, $contract, $futures, $account);
            $res3 = $this->CapitalFlow->entrust_buy($account, $bond, $fee);
            if ($res1 && $res2 && $res3) {
                $this->UserAccount->commit();
                $r = msg_handle('委托成功', 1);
            } else {
                $this->UserAccount->rollback();
                $r = msg_handle('委托买失败', 0);
            }
        }
        return $r;
    }

    /**
     * 交易时间
     * @param $future array 品种信息
     * @param $season int 时令信息
     * @return int
     */
    private function trade_time($future, $season)
    {
        $closed_arrange = $this->Closed->query_find($future['id']);
        $isTrade = 0;
        if (empty($closed_arrange) && date('w') != 6 && date('w') != 0) {
            $current_time = time();
            $time_array = $season ? $future['winter'] : $future['summer'];
            $time_array = json_decode($time_array);
            foreach ($time_array as $key => $value) {
                $value = explode('-', $value);
                if (strtotime($value[0]) <= $current_time && strtotime($value[1]) >= $current_time) {
                    $isTrade = 1;
                }
            }
        }
        return $isTrade;
    }
}




































