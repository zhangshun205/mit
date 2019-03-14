<?php

namespace app\index\model;

use think\Model;

class UserAccount extends Model
{
    protected $table = 'sn_user_account';

    public function user()
    {
        return $this->belongsTo('User', 'uid', 'id');
    }

    /**
     * 添加记录
     * @param $id  int 新用户id
     * @param $reid int 推荐人id
     * @param $agent int 代理id
     * @param $staff int 员工id
     * @return int|string
     */
    public function add_log($id, $reid, $agent, $staff)
    {
        $map['uid'] = $id;
        $map['agent'] = $agent;
        $map['staff'] = $staff;
        $map['time'] = time();
        return $this->insert($map);
    }

    /**
     * 查询资金信息
     * @param $id int 资金信息
     * @return array|false|\PDOStatement|string|Model
     */
    public function query_find($id)
    {
        return $this->where(array('uid' => $id))->find();
    }

    /**
     * 开仓委托
     * @param $list array 账户信息
     * @param $bond float 保证金
     * @param $fee float 手续费
     * @return mixed
     */
    public function entrust_buy($list, $bond, $fee)
    {
        $map['uid'] = $list['uid'];
        $map['account'] = $list['account'] - $bond - $fee;
        $map['bond'] = $list['bond'] + $bond + $fee;
        $map['time'] = time();
        return $this->update($map);
    }

    /**
     * 委托成交
     * @param $list array 账户信息
     * @param $bond float 保证金
     * @param $fee float 手续费
     * @return $this
     */
    public function deal_buy($list, $bond, $fee)
    {
        $map['uid'] = $list['uid'];
        $map['bond'] = $list['bond'] - $fee;
        $map['fee_total'] = $list['fee_total'] + $fee;
        $map['time'] = time();
        return $this->update($map);
    }

    /**
     * 平仓成交
     * @param $list array 账户信息
     * @param $bond float 保证金
     * @param $profit float 盈亏金额
     * @param $fee float 手续费
     * @return $this
     */
    public function deal_sell($list, $bond, $profit, $fee)
    {
        $map['uid'] = $list['uid'];
        $map['account'] = $list['account'] - $fee + $profit + $bond;
        $map['bond'] = $list['bond'] - +$bond;
        $map['fee_total'] = $list['fee_total'] + $fee;
        $map['time'] = time();
        return $this->update($map);
    }

    /**
     * 提现处理
     * @param $list array 账户信息
     * @param $number int 提现金额
     * @param $fee float 费用
     * @return $this
     */
    public function withdraw_data($list, $number, $fee)
    {
        $map['uid'] = $list['uid'];
        $map['account'] = $list['account'] - $number;
        $map['wit_total'] = $list['wit_total'] + $number;
        $map['wit_fee'] = $list['wit_fee'] + $fee;
        $map['time'] = time();
        return $this->update($map);
    }
}


