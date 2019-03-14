<?php

namespace app\common\model;

use think\Model;

class UserAccount extends Model
{
    protected $table = 'sn_user_account';

    public function user()
    {
        return $this->hasOne('User', 'id', 'uid');
    }
    public function agents()
    {
        return $this->belongsTo('Agent', 'agent', 'id');
    }

    /**查询会员账户信息
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

        $arr = $this->where($map)->relation(array('user','agents'))->order('time desc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        $sum['sum_account'] = $this->where($map)->sum('account');
        $sum['sum_yesterday'] = $this->where($map)->sum('yesterday');
        $sum['sum_bond'] = $this->where($map)->sum('bond');
        $sum['sum_profit_total'] = $this->where($map)->sum('profit_total');
        $sum['sum_wit_total'] = $this->where($map)->sum('wit_total');
        $sum['sum_wit_fee'] = $this->where($map)->sum('wit_fee');
        $sum['sum_rec_total'] = $this->where($map)->sum('rec_total');
        $sum['sum_trade_total'] = $this->where($map)->sum('trade_total');
        $sum['sum_fee_total'] = $this->where($map)->sum('fee_total');
        $sum['sum_push_total'] = $this->where($map)->sum('push_total');
        $sum['sum_server_total'] = $this->where($map)->sum('server_total');
        $list['sum'] = $sum;
        return $list;
    }

    /**
     * 增加账号金额
     * @param $id  int 用户id
     * @param $number  float 金额
     * @return int|true
     * @throws \think\Exception
     */
    public function add_account($id, $number)
    {
        return $this->where(array('uid' => $id))->setInc('account', $number);
    }

    /**
     * 添加记录
     * @param $id
     * @param $phone
     */
    public function add_log($id, $phone)
    {
        $data['uid'] = $id;
        $data['account'] = $phone;
        return $this->insert($data);
    }


}