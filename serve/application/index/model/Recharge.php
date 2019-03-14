<?php

namespace app\index\model;

use think\Model;

class Recharge extends Model
{
    protected $table = 'sn_recharge';

    /**
     * 增加记录
     * @param $id int 用户id
     * @param $number float 申请数量
     * @param $balance float 剩余数量
     * @param $fee int float 费用
     * @param $pay_type int 支付类型
     * @param $data
     * @return int|string
     */
    public function add_log($id, $number, $balance, $fee, $pay_type, $data)
    {
        $map['uid'] = $id;
        $map['order'] = rand_order($id);
        $map['number'] = $number;
        $map['balance'] = $balance;
        $map['fee'] = $fee;
        $map['status'] = 0;
        $map['pay_type'] = $pay_type;
        $map['time'] = time();
        $map['staff'] = $data['staff'];
        $map['agent'] = $data['agent'];
        return $this->insert($map);
    }

    public function query_log($map, $number)
    {
        $list = $this->where($map)->order(array('id desc'))->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]["username"] = $number;
            $data[$key]["currency"] = 'USD';
            $data[$key]["number"] = $value['number'];
            $data[$key]['type'] = '信用金';
            $data[$key]['direction'] = '出金';
            $data[$key]["time"] = detail_time($value["time"]);
            $data[$key]["status"] = $this->type_name($value['type']);
            $data[$key]["pay_time"] = $value["pay_time"] ? detail_time($value["pay_time"]) : '';
            $data[$key]['remark'] = $value["remark"] ? $value["remark"] : "";
        }
        return $data;
    }

    public function type_name($type)
    {
        switch ($type) {
            case 1:
                $name = '后台完成';
                break;
            case 2:
                $name = '在线完成';
                break;
            default:
                $name = '处理中';
                break;
        }
        return $name;
    }

    public function status_name($status)
    {
        switch ($status) {
            case 1:
                $name = '申请充值';
                break;
            case 2:
                $name = '申请提现';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }
}










