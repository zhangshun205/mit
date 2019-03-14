<?php

namespace app\index\model;

use think\Model;

class Withdraw extends Model
{
    protected $table = 'sn_withdraw';

    /**
     * 添加记录
     * @param $id int 用户id
     * @param $number int 提现金额
     * @param $balance  float 剩余数量
     * @param $fee float 手续费
     * @param $data $agent int 代理id $staff int 员工id
     * @return int|string
     */
    public function add_log($id, $number, $balance, $fee, $data)
    {
        $map['uid'] = $id;
        $map['order'] = rand_order($id);
        $map['number'] = $number;
        $map['total'] = $number - $fee;
        $map['fee'] = $fee;
        $map['balance'] = $balance;
        $map['status'] = 0;
        $map['agent'] = $data['agent'];
        $map['staff'] = $data['staff'];
        $map['time'] = time();
        return $this->insert($map);
    }

    /**
     * 查询记录
     * @param $map  array 条件
     * @param $number string 账户编号
     * @return array
     */
    public function query_log($map, $number)
    {
        $list = $this->where($map)->order(array('id desc'))->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]["username"] = $number;
            $data[$key]["currency"] = 'USD';
            $data[$key]["number"] = $value['number'];
            $data[$key]['type'] = '客户本金';
            $data[$key]['direction'] = '出金';
            $data[$key]["time"] = detail_time($value["time"]);
            $data[$key]["status"] = $value['status'] ? '出金申请已完成' : '出金申请';
            $data[$key]["pay_time"] = $value["pay_time"] ? detail_time($value["pay_time"]) : '';
            $data[$key]['remark'] = $value["remark"] ? $value["remark"] : "";
        }
        return $data;
    }
}