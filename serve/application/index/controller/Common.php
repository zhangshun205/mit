<?php

namespace app\index\controller;

use app\index\nozzle\OuterDisc;
use think\Controller;
use think\Request;

class Common extends Controller
{
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    /**
     * 计算冻结资金数量
     * @param $number int 委托手数
     * @param $bond float  保证金额/每手
     * @param $fee  float  手续费金额/每手
     * @return float|int
     */
    public function calculation_deal($number, $bond, $fee)
    {
        return $number * ($bond + $fee);
    }

    /**
     * 查询当前信息
     * @param $code string 合约信息
     * @param $classify int  // 0 限价 1：最新价 2：对手价 3：挂单价 4:快速价
     * @param $price float  传递的价位
     * @return float
     */
    public function classify_price($code, $classify, $price)
    {
        $outer_disc = new OuterDisc();
        $list = $outer_disc->market_detail($code);
        if ($classify == 1) {
            $price = floatval($list['close']);
        } elseif ($classify == 2) {
            $price = floatval($list['ask1Price']);
        } elseif ($classify == 3) {
            $price = floatval($list['bid1Price']);
        }
        return $price;
    }
}