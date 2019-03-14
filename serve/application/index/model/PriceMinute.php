<?php

namespace app\index\model;

use think\Model;

class PriceMinute extends Model
{
    protected $table = 'sn_price_minute';

    /**
     * @param $short
     * @param $name
     * @param $code
     * @param $price float 价格
     * @param $number float 交易数量
     * @param $turnover float 持仓数量
     * @return int|mixed|string
     */
    public function add_log($short, $name, $code, $price, $number, $turnover)
    {
        $minute = strtotime(date('YmdHi'));
        $list = $this->where(array('short' => $short, 'time' => $minute))->find();
        if ($list) {
            $map['id'] = $list['id'];
            $map['close'] = $price;
            $map['highest'] = $list['highest'] < $price ? $price : $list['highest'];
            $map['lowest'] = $list['lowest'] > $price ? $price : $list['lowest'];
            $map['volume'] = $number;
            $map['turnover'] = $turnover;
            $r = $this->update($map);
        } else {
            $map['short'] = $short;
            $map['name'] = $name;
            $map['code'] = $code;
            $map['open'] = $price;
            $map['close'] = $price;
            $map['highest'] = $price;
            $map['lowest'] = $price;
            $map['volume'] = $number;
            $map['turnover'] = $turnover;
            $map['time'] = $minute;
            $r = $this->insert($map);
        }
        return $r;
    }
}