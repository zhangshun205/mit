<?php

namespace app\common\model;

use think\Model;

class UserBank extends Model
{
    protected $table = 'sn_user_bank';

    public function user()
    {
        return $this->hasOne('User', 'id', 'uid');
    }

    public function banks()
    {
        return $this->hasOne('Bank', 'id', 'bank');
    }

    /**
     * 查询用户银行信息
     * @param $map
     * @param $page
     * @param $size
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function query_log($map, $page, $size)
    {
        $defaltPng = '/uploads/default.png';
        $map['status'] = 1;
        $arr = $this->where($map)->relation(array('user', 'banks'))->order('time asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['positive'] = empty($value['user']['positive']) ? $defaltPng : $value['user']['positive'];
            $value['other_side'] = empty($value['user']['other_side']) ? $defaltPng : $value['user']['other_side'];
            $value['time'] = detail_time($value['time']);
            $value['bank_side'] = empty($value['bank_side']) ? $defaltPng : $value['bank_side'];
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }
}