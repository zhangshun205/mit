<?php

namespace app\common\model;

class AgentWithdraw extends \think\Model
{
    protected $table = 'sn_agent_withdraw';

    public function agent()
    {
        return $this->hasOne('Agent', 'id', 'uid');
    }
    public function query_log($map, $page, $size)
    {
        $arr = $this->where($map)->relation('agent')->order('time desc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['pay_time'] = detail_time($value['pay_time']);
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }
}