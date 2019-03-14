<?php

namespace app\common\model;

use think\Model;

class AgentWithdraw extends Model
{
    protected $table = 'sn_agent_withdraw';

    public function agents()
    {
        return $this->hasOne('Agent', 'id', 'uid');
    }

    /**
     * 新增财务提现
     * @param $uid
     * @param $number
     * @param $balance
     * @param $fee
     * @param $time
     * @param $pay_time
     * @param $remark
     * @return int|string
     */
    public function add_log($uid, $number, $balance, $fee, $time, $pay_time, $remark)
    {
        $data['uid'] = $uid;
        $data['number'] = $number;
        $data['balance'] = $balance;
        $data['fee'] = $fee;
        $data['time'] = $time;
        $data['pay_time'] = $pay_time;
        $data['remark'] = $remark;
        $data['order'] = createOrderNum(1);
        return $this->insert($data);
    }

    public function query_log($map, $page, $size)
    {
        $arr = $this->where($map)->relation('agents')->order('time desc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['pay_time'] = detail_time($value['pay_time']);
            switch ($value['status']) {
                case '0':
                    $value['status'] = '未处理';
                    break;
                case '1':
                    $value['status'] = '已同意';
                    break;
                case '2':
                    $value['status'] = '已拒绝';
                    break;
                default:
                    $value['status'] = '其他';
                    break;

            }
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }
}