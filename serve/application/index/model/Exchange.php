<?php

namespace app\index\model;

use think\Model;

class Exchange extends Model
{
    protected $table = 'sn_exchange';

    public function futures()
    {
        $field = array('id', 'name', 'code', 'short', 'price', 'amount', 'industry', 'bourse');
        return $this->hasMany('Futures', 'bourse', 'id')->field($field);
    }


    /**
     * 查找记录
     * @param $ids
     * @return false|\PDOStatement|string|\think\Collection
     */
    public function query_log($ids)
    {
        $field = array('id', 'code', 'short', 'type');
        if($ids){
            $map = array('status' => 1, 'id' => $ids);
        }else{
            $map = array('status' => 1);
        }
        return $this->where($map)->field($field)->order(array('sort desc'))->select();
    }

    /**
     * 查找单条记录
     * @param $map
     * @return array|false|\PDOStatement|string|Model
     */
    public function query_find($map)
    {
        return $exchange = $this->where($map)->find();
    }
}