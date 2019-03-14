<?php

namespace app\index\model;

use think\Model;

class Bank extends Model
{
    protected $table = 'sn_bank';

    /**
     * 获取银行
     * @param $map array 查询条件
     * @return array
     */
    public function query_bank($map)
    {
        $list = $this->where($map)->select();
        $arr = array();
        foreach ($list as $key => $value) {
            $arr[$key]['id'] = $value['id'];
            $arr[$key]['bank'] = $value['name'];
        }
        return $arr;
    }

    /**
     * 查询单条信息
     * @param $map array 查询条件
     * @return array|false|\PDOStatement|string|Model
     */
    public function query_find($map)
    {
        $map['status'] = 1;
        return $this->where($map)->find();
    }
}

