<?php

namespace app\common\model;

use think\Model;

//use think\Db;
//use app\common\model\Account;


class UserFee extends Model
{
    protected $table = 'sn_user_fee';

    public function user()
    {
        return $this->hasOne('User', 'id', 'uid')->field('id,name,phone');
    }

    public function futures()
    {
        return $this->hasOne('Variety', 'id', 'future')->field('id,name');
    }

    public function query_log($map, $page, $size)
    {
        $arr = $this->relation('futures,user')->where($map)->order('time asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
//            $value['status_text'] = $value['status'] == 1 ? '正常' : '删除';
            $value['time'] = detail_time($value['time']);
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }

    /**
     * @param $map
     * @return array|false|\PDOStatement|string|Model
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function find_log($map)
    {
        $data = $this->where($map)->relation('futures,user')->find();
        return $data;
    }
}