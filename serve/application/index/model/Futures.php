<?php

namespace app\index\model;

use think\Model;

class Futures extends Model
{
    protected $table = 'sn_futures';

    public function exchangeRate()
    {
        return $this->belongsTo('ExchangeRate', 'currency', 'id');
    }

    public function query_log($bourse)
    {
        $field = array('id', 'name', 'code', 'short', 'price', 'amount', 'industry', 'bourse');
        $map = array('status' => 1, 'bourse' => $bourse);
        $futures = $this->where($map)->field($field)->select();
        return $this->futures_category($futures);
    }

    /**
     * 品种分类处理
     * @param $list mixed 数据信息
     * @return array
     */
    public function futures_category($list)
    {
        $array = $data = array();
        foreach ($list as $key => $value) {
            $arr['name'] = $value['name'];
            $arr['futures'] = array($value['id']);
            array_push($array, $arr);
            $data[$value['industry']][] = $value;
        }
        foreach ($data as $key => $value) {
            $arr['name'] = $key;
            $arr_ay = array();
            foreach ($value as $k => $v) {
                array_push($arr_ay, $v['id']);
            }
            $arr['futures'] = $arr_ay;
            array_push($array, $arr);
        }
        return $array;
    }
}