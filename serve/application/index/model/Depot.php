<?php

namespace app\index\model;

use think\Model;

class Depot extends Model
{
    protected $table = 'sn_depot';

    public function futures()
    {
        return $this->belongsTo('Futures', 'future', 'id');
    }

    /**
     * 增加持仓记录
     * @param $id int 用户id
     * @param $future int 品种id
     * @param $number int 数量
     * @param $price float 价格
     * @param $direction int 方向  0 买涨 1 做空
     * @param $stock array 股票信息
     * @param $fee float 费用
     * @param $bond float 保证金
     * @param $data array 基础费用
     * @return $this|int|string
     */
    public function add_log($id, $future, $number, $price, $direction, $stock, $fee, $bond, $data)
    {
        $map = array('uid' => $id, 'direction' => $direction, 'code' => $stock['code'], 'name' => $stock['name']);
        $list = $this->where($map)->find();
        $money = $price * $number;//成交价值
        if ($list) {
            $use_number = $list['surplus'] + $list['frozen'] + $number;
            $map['id'] = $list['id'];
            $map['number'] = $list['number'] + $number;
            $map['surplus'] = $list['surplus'] + $number;
            $map['surplus_total'] = $list['surplus_total'] + $money;
            $map['cost_total'] = $list['cost_total'] + $money;
            $map['fee_total'] = $list['fee_total'] + $fee;
            $map['bond_total'] = $list['bond_total'] + $bond;
            $map['buy_total'] = $list['buy_total'] + $money;
            if ($use_number) {
                $map['price'] = $map['surplus_total'] / $use_number;
                $map['cost'] = $map['cost_total'] / $use_number;
                $map['average'] = $map['price'];
            } else {
                $map['price'] = 0;
                $map['cost'] = 0;
                $map['average'] = $map['price'];
            }
            $map['modify_time'] = time();
            $r = $this->update($map);
        } else {
            $map['uid'] = $id;
            $map['future'] = $future;
            $map['short'] = $stock['short'];
            $map['code'] = $stock['code'];
            $map['name'] = $stock['name'];
            $map['number'] = $number;
            $map['surplus'] = $number;
            $map['price'] = $price;
            $map['average'] = $price;
            $map['cost'] = $price;
            $map['surplus_total'] = $money;
            $map['cost_total'] = $money;
            $map['direction'] = $direction;
            $map['buy_total'] = $money;
            $map['bond_total'] = $bond;
            $map['fee_total'] = $fee;
            $map['time'] = time();
            $map['modify_time'] = time();
            $map['agent'] = $data['agent'];
            $map['staff'] = $data['staff'];
            $r = $this->insert($map);
        }
        return $r;
    }

    /**
     * 出售完成持仓处理
     * @param $list array 用户信息
     * @param $number int 数量
     * @param $price float 价位
     * @param $profit float 盈亏金额
     * @param $fee float 手续费
     * @param $bond float 保证金
     * @return $this
     */
    public function depot_modify_log($list, $number, $price, $profit, $fee, $bond)
    {
        $price_total = $number * $list['price'];
        $surplus = $list['surplus'] + $list['frozen'] - $number;
        $map['id'] = $list['id'];
        $map['frozen'] = $list['frozen'] - $number;
        $map['finish'] = $list['finish'] + $number;
        $map['frozen_total'] = $list['frozen_total'] - $price_total;
        if ($surplus) {
            $map['price'] = $list['surplus_total'] / $surplus;
            $map['cost'] = $list['cost_total'] / $surplus;
        } else {
            $map['price'] = 0;
            $map['average'] = 0;
            $map['cost'] = 0;
            $map['surplus_total'] = 0;
            $map['cost_total'] = 0;
            $map['frozen_total'] = 0;
        }
        $map['sell_total'] = $list['sell_total'] + $number * $price;
        $map['fee_total'] = $list['fee_total'] + $fee;
        $map['bond_total'] = $list['bond_total'] - $bond;
        $map['profit_loss'] = $list['profit_loss'] + $profit;
        $map['modify_time'] = time();
        return $this->update($map);
    }


    /**
     * 查询记录
     * @param $map array 查询条件
     * @return mixed
     */
    public function query_log($map)
    {
        $map['surplus|frozen'] = array('neq', 0);
        $list = $this->where($map)->relation(array('futures'))->order('time desc')->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['contract'] = $value['name'];
            $data[$key]['short'] = $value['short'];
            $data[$key]['number'] = $value['surplus'] + $value['frozen'];//持仓
            $data[$key]['day_num'] = 0;//今仓
            $data[$key]['surplus'] = $value['surplus'];//可用
            $data[$key]['min_loss'] = priceFill($value['loss'], $value['futures']['price']);//最小止损数量
            $data[$key]['min_profit'] = priceFill($value['profit'], $value['futures']['price']);//最小止盈数量
            $data[$key]['profit_loss'] = '';//逐笔盈亏
            $data[$key]['average'] = priceFill($value['average'], $value['futures']['price']);
            $data[$key]['market_price'] = 0;//市价
            $data[$key]['market_diff'] = 0;//总价差
            $data[$key]['bond_total'] = floatval($value['bond_total']);//保证金
            $data[$key]['settle_currency'] = 'USD';//结算币种
            $data[$key]['offer_currency'] = $value['futures']['currency'];//报价币种
            $data[$key]['settle_ratio'] = '';//结算汇率
            $data[$key]['contract_name'] = $value['name'];//合约名称
            $data[$key]['wave_price'] = $value['futures']['wave_price'];//每手乘以
            $data[$key]['variety'] = $value['futures']['name'];//品种
            $data[$key]['exchange'] = $value['futures']['bourse'];//交易所
            $data[$key]['decimal_place'] = $value['futures']['price'];//小数点
            $data[$key]['direction'] = $value['direction'] ? '卖出' : '买入';
        }
        return $data;
    }

    /**
     * 查询单股票持仓信息
     * @param $id int 用户ID
     * @param $name string 信息代理
     * @param $direction int 方向
     * @return array|false|\PDOStatement|string|Model
     */
    public function depot_query($id, $name, $direction)
    {
        $map = array('uid' => $id, 'name' => $name, 'direction' => $direction, 'surplus' => array('neq', 0));
        return $this->where($map)->find();
    }

    /**
     * 委托平仓
     * @param $list array 持仓信息
     * @param $number int 出售数量
     * @return mixed
     */
    public function entrust_sell_contract($list, $number)
    {
        $price_total = $number * $list['price'];
        $cost_total = $number * $list['cost'];
        $map['id'] = $list['id'];
        $map['surplus'] = $list['surplus'] - $number;
        $map['frozen'] = $list['frozen'] + $number;
        $map['cost_total'] = $list['cost_total'] - $cost_total;
        $map['surplus_total'] = $list['surplus_total'] - $price_total;
        $map['frozen_total'] = $list['frozen_total'] + $cost_total;
        $map['modify_time'] = time();
        return $this->update($map);
    }
}