<?php

namespace app\common\model;

use think\Model;

class SendSms extends Model
{
    protected $User;

    public function user()
    {
        return $this->belongsTo('User', 'uid');
    }

    /**
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
        $arr = $this->where($map)->relation('user')->order('time desc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }
}