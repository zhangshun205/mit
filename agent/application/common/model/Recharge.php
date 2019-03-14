<?php

namespace app\common\model;

class Recharge extends \think\Model
{

    public function user()
    {
        return $this->hasOne('User', 'id', 'uid');
    }

    public function query_log($map, $page, $size)
    {
        $arr = $this->where($map)->relation('user')->order('time desc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key =>&$value) {
            $value['type'] = $value['type'] == 1 ? '在线完成' : '后台完成';
            $value['time']=detail_time($value['time']);
            $value['pay_time']=detail_time($value['pay_time']);
            switch ($value['pay_type']) {
                case '1':
                    $value['pay_type'] = '网银支付';
                    break;
                case '2':
                    $value['pay_type'] = '认证支付';
                    break;
                default:
                    $value['pay_type'] = '其他';
                    break;
            }
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }

}
