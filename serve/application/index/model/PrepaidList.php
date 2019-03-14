<?php

namespace app\index\model;

use think\Model;

class PrepaidList extends Model
{
    protected $table = 'sn_prepaid_list';

    public function futures()
    {
        return $this->belongsTo('Futures', 'future', 'id');
    }

    /**
     * @param $id int 用户id
     * @param $stock array 合约信息
     * @param $future int 品种ID
     * @param $mold int  开仓类型 0：开仓 1：平仓
     * @param $direction int 开仓类型 0：买涨(买入) 1：买跌(卖出)
     * @param $number int 委托手数
     * @param $price float //N秒后市价
     * @param $classify //类型
     * @param $back_loss //回撤跳止损
     * @param $market_loss int  市价止盈损 0 非校验 1校验
     * @param $time_seconds //N秒后市价
     * @param $loss_spot //1按跳 ，0：按价格
     * @param $profit_spot //1按跳 ，0：按价格
     * @param $loss //止损跳/价格
     * @param $profit //止盈跳/价格
     * @return int|string
     */
    public function add_log($id, $stock, $future, $mold, $direction, $number, $price, $classify, $back_loss, $market_loss, $time_seconds, $loss_spot, $profit_spot, $loss, $profit)
    {
        $map['uid'] = $id;
        $map['short'] = $stock['short'];
        $map['code'] = $stock['code'];
        $map['name'] = $stock['name'];
        $map['order'] = rand_order($id);
        $map['future'] = $future;
        $map['mold'] = $mold;
        $map['direction'] = $direction;
        $map['number'] = $number;
        $map['classify'] = $classify;
        $map['price'] = $price;
        $map['back_loss'] = $back_loss;//回撤跳止损点位
        $map['market_loss'] = $market_loss;//市价止盈损  0：非校验，1：校验
        $map['time_seconds'] = $time_seconds;//N秒后市价
        $map['status'] = 0;//0 进行中 1 已完成 2 已删除
        $map['loss_spot_price'] = $loss_spot;
        $map['profit_spot_price'] = $profit_spot;
        $map['loss_spot'] = $loss_spot ? '' : $loss;
        $map['loss_price'] = $loss_spot ? $loss : '';
        $map['profit_spot'] = $profit_spot ? $profit : '';
        $map['profit_price'] = $profit_spot ? '' : $profit;
        $map['time'] = time();
        return $this->insert($map);
    }

    /**
     * 查询记录
     * @param $map array 查询条件
     * @return mixed
     */
    public function query_log($map)
    {
        $map['status'] = 0;
        $list = $this->where($map)->relation(array('futures'))->order('time desc')->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['mark'] = $value['id'];
            $data[$key]['contract'] = $value['name'];
            $data[$key]['short'] = $value['short'];
            $data[$key]['time'] = detail_time($value['time']);
            $data[$key]['direction'] = $value['direction'] ? '卖出' : '买入';
            $data[$key]['mold'] = $value['mold'] ? '平仓' : '开仓';
            $data[$key]['number'] = $value['number'];
            $data[$key]['price'] = $value['price'] ? priceFill($value['price'], $value['futures']['price']) : $this->price_type($value['classify']);
            $data[$key]['back_loss'] = $value['back_loss'];
            $data[$key]['market_loss'] = $value['market_loss'];
            $data[$key]['time_seconds'] = $value['time_seconds'];
            $loss_name = $value['loss_spot_price'] ? '亏损' : '止损价';
            $profit_name = $value['profit_spot_price'] ? '止盈' : '止盈价';
            $loss = $value['loss_spot_price'] ? $value['loss_spot'] . '跳' : priceFill($value['loss_price'], $value['futures']['price']);
            $profit = $value['profit_spot_price'] ? $value['profit_spot'] . '跳' : priceFill($value['profit_price'], $value['futures']['price']);
            if ($value['loss_spot'] || floatval($value['loss_price'])) {
                $data[$key]['loss'] = $loss_name . ':' . $loss;
            } else {
                $data[$key]['loss'] = '---';
            }
            if ($value['profit_spot'] || floatval($value['profit_price'])) {
                $data[$key]['profit'] = $profit_name . ':' . $profit;
            } else {
                $data[$key]['profit'] = '---';
            }
            $data[$key]['order'] = $profit_name . ':' . $profit;
        }
        return $data;
    }

    public function delete_log($list)
    {
        $map['id'] = $list['id'];
        $map['status'] = 2;
        $map['time'] = time();
        return $this->update($map);
    }

    public function all_delete_log($list)
    {
        $data = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['status'] = 2;
            $map['time'] = time();
            array_push($data, $map);
        }
        if ($data) {
            return $this->saveAll($data);
        } else {
            return 1;
        }
    }

    private function price_type($type)
    {
        switch ($type) {
            case 0:
                $name = '排队价';
                break;
            case 1:
                $name = '最新价';
                break;
            case 2:
                $name = '对手价';
                break;
            case 3:
                $name = '市价';
                break;
            default:
                $name = '限价';
                break;
        }
        return $name;
    }
}