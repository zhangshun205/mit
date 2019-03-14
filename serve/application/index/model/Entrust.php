<?php

namespace app\index\model;

use think\Model;

class Entrust extends Model
{
    protected $table = 'sn_entrust';

    public function futures()
    {
        return $this->belongsTo('Futures', 'future', 'id');
    }
    // 状态信息：        0.发送中,1.已挂起，2.已挂单，3.撤销中，4.修改中，5.部分成交，6.全部成交，7.已撤销，8错误
    // 开平：            0.开仓，1.平仓，2.自动(强平)
    // 委托来源：        0.交易端，1.移动端，2.管理端，3.风控员，4.风控，5.止损单,6.条件单，7.预埋单，8.API,9.风控改价，
    //                   10.结算，11.策略
    //止损方式：         0.不设置，1.跳点止损止盈，2.价格止损止盈，3.跳点止损/价格止盈，4.价格止损/跳点止盈
    //有效日期：         0.当日有效，1.永久有效
    //市价止损：         0.(不选择)非校验，1.(选择)校验

    //触发类型：         0.价格，1.画线价格，2.时间，3.价格+时间，4.开盘
    //完成原因：         0.已触发，1.立即下单，2.用户删除，3.风控员删除，4.结算
    //止损单状态：       0.运行，1.暂停，2.已触发，3.已删除
    //止损单完成原因：   0.止盈触发，1.止损触发，2.回撤止损，3.客户删除，4.无持仓，5.管理端删除，6.结算
    /**
     * @param $id int  用户id
     * @param $number int 委托数量
     * @param $price  float 委托价格
     * @param $fee float 手续费
     * @param $bond float 保证金
     * @param $mold float 0 开仓 1 平仓
     * @param $direction float 委托方法 0买涨(卖涨)1买跌(买跌)
     * @param $classify float 价格模式
     * @param $contract array 合约信息
     * @param $futures array 品种信息
     * @param $data array 基础信息
     * @return int|string
     */
    public function add_log($id, $number, $price, $fee, $bond, $mold, $direction, $classify, $contract, $futures, $data)
    {
        $map['uid'] = $id;
        $map['order'] = rand_order($id);
        $map['short'] = $contract['short'];
        $map['code'] = $contract['code'];
        $map['name'] = $contract['name'];
        $map['number'] = $number;
        $map['surplus'] = $number;
        $map['entrust_price'] = $price;
        $map['average_price'] = $price;
        $map['cost_price'] = $price;
        $map['fee_total'] = $fee;
        $map['frozen_fee'] = $fee;
        $map['bond_total'] = $bond;
        $map['frozen_bond'] = $bond;
        $map['total'] = $number * $price;
        $map['mold'] = $mold;
        $map['direction'] = $direction;
        $map['price_type'] = $classify;
        if ($mold == 0) {
            $map['trade_type'] = $direction ? 1 : 0;
        } else {
            $map['trade_type'] = $direction ? 3 : 2;
        }
        $map['time'] = time();
        $map['agent'] = $data['agent'];
        $map['staff'] = $data['staff'];
        $map['future'] = $futures['id'];
        $map['bond_ratio'] = $futures['bond'];
        $map['fee'] = $mold == 0 ? $futures['buy_fee'] : $futures['sell_fee'];
        return $this->insert($map);
    }

    /**
     * 查询记录
     * @param $map array 条件
     * @return mixed
     */
    public function query_log($map)
    {
        $list = $this->where($map)->relation(array('futures'))->order('time desc')->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['id'] = $value['id'];
            $data[$key]['contract'] = $value['name'];
            $data[$key]['short'] = $value['short'];
            $data[$key]['status'] = $this->status_name($value['status']);
            $data[$key]['number'] = $value['number'];
            $data[$key]['entrust_price'] = priceFill($value['entrust_price'], $value['futures']['price']);
            $data[$key]['direction'] = $value['direction'] ? '卖出' : '买入';
            $data[$key]['mold'] = $value['mold'] ? '平仓' : '开仓';
            $data[$key]['prevent_loss'] = '';//预止损
            $data[$key]['system'] = '';//系统号
            $data[$key]['entrust_order'] = $value['order'];//委托号
            $data[$key]['surplus'] = $value['surplus'];//剩余可撤销
            $data[$key]['deal'] = $value['finish'];//成交数量
            $data[$key]['time'] = date("Y.m.d H:i", $value['time']);
            $data[$key]['cancel_time'] = $value['finish_time'] ? date("Y.m.d H:i", $value['finish_time']) : '';
            $data[$key]['detail_status'] = '';//详细状态
            $data[$key]['source'] = '';//委托来源
            $data[$key]['currency'] = 'USD';//结算币种
            $data[$key]['decimal'] = '';//小数位
            $data[$key]['order_id'] = '';//下单会话ID
            $data[$key]['loss_price'] = '';//止损价
            $data[$key]['back_loss'] = '';//回撤跳止损
            $data[$key]['profit_price'] = '';//止盈价
            $data[$key]['loss_type'] = '';//止损方式
            $data[$key]['effective_date'] = '';//有效日期
            $data[$key]['market_price_loss'] = '';//市价止损
        }
        return $data;
    }

    /**
     * 委托完成修改信息
     * @param $list array 委托信息
     * @param $number int  数量
     * @param $price float 价格
     * @param $bond float 保证金
     * @param $fee float 手续费
     * @return int|string
     */
    public function entrust_finish($list, $number, $price, $fee, $bond)
    {
        $map['id'] = $list['id'];
        $map['surplus'] = $list['surplus'] - $number;
        $map['finish'] = $list['finish'] + $number;
        $map['deal_price'] = $price;         //成交价格
        $map['frozen_fee'] = $list['frozen_fee'] - $fee;//手续费
        $map['frozen_bond'] = $list['frozen_bond'] - $bond;//手续费
        if (empty($map['cost_price'])) {
            $map['cost_price'] = ($number * $price) / $number;
        }
        if ($map['surplus'] <= 0) {
            $map['status'] = 2;
            $map['finish_time'] = time();
        }
        return $this->update($map);
    }

    /**
     * 状态信息
     * @param $status int 状态编号
     * @return string
     */
    public function status_name($status)
    {
        switch ($status) {
            case 0:
                $name = '未完成';
                break;
            case 1:
                $name = '部成';
                break;
            case 2:
                $name = '已完成';
                break;
            case 3:
                $name = '已撤销';
                break;
            case 4:
                $name = '部撤';
                break;
            default:
                $name = '错单';
                break;
        }
        return $name;
    }
}