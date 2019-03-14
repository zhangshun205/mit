<?php

namespace app\index\model;

use think\Model;

class Deal extends Model
{
    protected $table = 'sn_deal';

    public function futures()
    {
        return $this->belongsTo('Futures', 'future', 'id');
    }

    public function entrust()
    {
        return $this->belongsTo('Entrust', 'entrust', 'id');
    }

    /**
     * @param $id int 用户id
     * @param $future int 品种id
     * @param $stock array 股票信息
     * @param $mold int 委托模式
     * @param $direction int 委托方向 0 开仓 1平仓
     * @param $number float 委托数量
     * @param $price_array array 价格
     * @param $fee float 收费信息
     * @param $data array 基础信息
     * @param $status float 成交状态
     * @param $entrust int 委托id
     * @return int|string
     */
    public function add_log($id, $entrust, $future, $stock, $number, $price_array, $mold, $status, $direction, $fee, $bond_total, $price_type, $data)
    {
        $map['uid'] = $id;
        $map['order'] = rand_order($id);
        $map['entrust'] = $entrust;
        $map['future'] = $future;
        $map['short'] = $stock['short'];
        $map['code'] = $stock['code'];
        $map['name'] = $stock['name'];
        $map['number'] = $number;
        if ($direction == 0) {
            $map['surplus'] = $number;
            $map['finish'] = 0;
        } else {
            $map['surplus'] = 0;
            $map['finish'] = $number;
            $map['finish_time'] = time();
        }
        $map['entrust_price'] = $price_array['entrust_price'];
        $map['deal_price'] = $price_array['deal_price'];
        $map['cost_price'] = $price_array['cost_price'];
        $map['fee_total'] = $fee;//手续费
        $map['bond_total'] = $bond_total;//保证金
        $map['status'] = $status;
        $map['mold'] = $mold;
        $map['direction'] = $direction;
        $map['price_type'] = $price_type;
        if ($mold == 0) {
            $map['trade_type'] = $direction == 0 ? 0 : 1;
        } else {
            $map['trade_type'] = $direction == 0 ? 2 : 3;
        }
        $map['time'] = time();
        $map['agent'] = $data['agent'];
        $map['staff'] = $data['staff'];
        return $this->insertGetId($map);
    }

    /**
     * 查询记录
     * @param $map array 条件
     * @return mixed
     */
    public function query_log($map)
    {
        $list = $this->where($map)->relation(array('futures', 'entrust'))->order('time desc')->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['order'] = $value['order'];
            $data[$key]['contract'] = $value['name'];
            $data[$key]['number'] = $value['number']/100;
            $data[$key]['deal_price'] = priceFill($value['deal_price'], $value['futures']['price']);
            $data[$key]['direction'] = $value['direction'] ? '卖出' : '买入';
            $data[$key]['mold'] = $value['mold'] ? '平仓' : '开仓';
            $data[$key]['entrust_order'] = $value['entrust']['order'];
            $data[$key]['source'] = '';//委托来源
            $data[$key]['time'] = date("Y.m.d H:i", $value['time']);
            $data[$key]['fee_total'] = priceFill($value['fee_total'], 2);
            $data[$key]['profit_loss'] = priceFill($value['profit_loss'], 2);
            $data[$key]['system'] = '';//系统号
            $data[$key]['user'] = '';//用户字段
        }
        return $data;
    }

    /**
     * 修改开仓记录
     * @param $id int 用户id
     * @param $direction int 委托方式
     * @param $name string 委托id
     * @param $number float 委托数量
     * @param $price float 委托价格
     * @return mixed
     */
    public function modify_buy_log($id, $direction, $name, $number, $price)
    {
        $map = array('uid' => $id, 'name' => $name, 'direction' => $direction, 'mold' => 0, 'status' => 0);
        $list = $this->order(array('time asc'))->where($map)->select();
        $array = array();
        foreach ($list as $key => $value) {
            $num = $this->number_sell($value['surplus'], $number);
            if ($value['surplus'] > $number) {
                break;
            } else {
                $number = $number - $num;
            }
            array_push($array, $this->sell_data($value, $num, $price));
        }
        return $this->saveAll($array);
    }

    /**
     * 出售处理
     * @param $list array 成交信息
     * @param $number int 成交数量
     * @param $price int 成交价格
     * @return mixed
     */
    private function sell_data($list, $number, $price)
    {
        $map['id'] = $list['id'];
        $map['surplus'] = $list['surplus'] - $number;
        if ($map['surplus'] <= 0) {
            $map['status'] = 1;
            $map['finish_time'] = time();
        }
        $map['finish'] = $list['finish'] + $number;
        $map['close_total'] = $list['close_total'] + $number * $price;
        $map['close_price'] = $map['close_total'] / $map['finish'];
        return $map;
    }

    /**
     * 数量判断
     * @param $surplus int 剩余数量
     * @param $number int 交易总量
     * @return mixed
     */
    private function number_sell($surplus, $number)
    {
        return $surplus >= $number ? $number : $surplus;
    }
}




















