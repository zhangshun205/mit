<?php

namespace app\common\model;


use think\Model;

class CapitalFlow extends Model
{
    protected $User;

    public function user1()
    {
        return $this->belongsTo('User', 'uid', 'uid')->find();
    }

    public function user()
    {
        return $this->belongsTo('User', 'uid');
    }

    public function query_log($map, $page, $size)
    {
        $arr = $this->where($map)->relation('user')->order('time asc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        $list['sum_number'] = $this->where($map)->sum('number');
        $list['sum_balance'] = $this->where($map)->sum('balance');
        return $list;
    }
}