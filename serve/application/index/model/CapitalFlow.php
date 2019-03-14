<?php

namespace app\index\model;

use think\Model;

class CapitalFlow extends Model
{
    protected $table = 'sn_capital_flow';

    /**
     * 增加记录数据处理
     * @param $id int 用户数据
     * @param $number int 数量
     * @param $balance float 剩余
     * @param $type int 类型
     * @param $mold int 类型 0 增加 1减少
     * @param $data array  $agent  int 代理id  $staff int 员工id $mother int 母账户信息
     * @return mixed
     */
    public function add_log($id, $number, $balance, $type, $mold, $data)
    {
        $map['uid'] = $id;
        $map['number'] = $number;
        $map['balance'] = $balance;
        $map['type'] = $type;
        $map['mold'] = $mold;
        $map['agent'] = $data['agent'];
        $map['staff'] = $data['staff'];
        $map['time'] = time();
        return $this->insert($map);
    }


    /**
     * 委托开仓
     * @param $list array 账户信息
     * @param $bond float 保证金
     * @param $fee_total float 收费
     * @return int|string
     */
    public function entrust_buy($list, $bond, $fee_total)
    {
        $balance = $list['account'] - $bond;
        $balance1 = $balance - $fee_total;
        $map[0] = $this->add_log_data($list['uid'], $bond, $balance, 3, 1, $list);
        $map[1] = $this->add_log_data($list['uid'], $fee_total, $balance1, 4, 1, $list);
        return $this->insertAll($map);
    }

    /**
     * 开仓成交
     * @param $list array 账户信息
     * @param $bond float 保证金
     * @param $fee float 收费
     * @return int|string
     */
    public function deal_buy($list, $bond, $fee)
    {
        $total = $bond + $fee;
        $balance = $list['account'] + $total;
        $balance1 = $balance - $bond;
        $balance2 = $balance1 - $fee;
        $map[0] = $this->add_log_data($list['uid'], $total, $balance, 7, 0, $list);
        $map[1] = $this->add_log_data($list['uid'], $bond, $balance1, 9, 1, $list);
        $map[2] = $this->add_log_data($list['uid'], $fee, $balance2, 10, 1, $list);
        return $this->insertAll($map);
    }

    public function deal_sell($list, $bond, $profit, $fee)
    {
        $balance = $list['account'] + $bond;
        $balance1 = $balance + $profit;
        $balance2 = $balance1 - $fee;
        $map[0] = $this->add_log_data($list['uid'], $bond, $balance, 11, 1, $list);
        $map[1] = $this->add_log_data($list['uid'], $profit, $balance1, 12, 1, $list);
        $map[2] = $this->add_log_data($list['uid'], $fee, $balance2, 13, 1, $list);
        return $this->insertAll($map);
    }

    /**
     * 增加记录数据处理
     * @param $id int 用户数据
     * @param $number int 数量
     * @param $balance float 剩余
     * @param $type int 类型
     * @param $mold int 类型 0 增加 1减少
     * @param $data array  $agent  int 代理id  $staff int 员工id $mother int 母账户信息
     * @return mixed
     */
    public function add_log_data($id, $number, $balance, $type, $mold, $data)
    {
        $map['uid'] = $id;
        $map['number'] = $number;
        $map['balance'] = $balance;
        $map['type'] = $type;
        $map['mold'] = $mold;
        $map['agent'] = $data['agent'];
        $map['staff'] = $data['staff'];
        $map['time'] = time();
        return $map;
    }

    /**
     * 类型判断
     * @param $type int 类型设置
     * @return string
     */
    public function type_handling($type)
    {
        switch ($type) {
            case 1:
                $name = '申请充值';
                break;
            case 2:
                $name = '申请提现';
                break;
            case 3:
                $name = '开仓委托冻结保证金';
                break;
            case 4:
                $name = '开仓委托冻结手续费';
                break;
            case 5:
                $name = '取消开仓委托解冻保证金';
                break;
            case 6:
                $name = '取消开仓委托解冻手续费';
                break;
            case 7:
                $name = '开仓委托完成解冻保证金';
                break;
            case 8:
                $name = '开仓委托完成解冻手续费';
                break;
            case 9:
                $name = '开仓成交冻结保证金';
                break;
            case 10:
                $name = '开仓成交收取费用';
                break;
            case 11:
                $name = '平仓成交解冻保证金';
                break;
            case 12:
                $name = '平仓成交盈利';
                break;
            case 13:
                $name = '平仓成交收取费用';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }
}

