<?php

namespace app\index\model;

use think\Model;

class UserBank extends Model
{
    protected $table = 'sn_user_bank';

    public function user()
    {
        return $this->belongsTo('User', 'uid', 'id')->field('id,phone');
    }

    public function bank()
    {
        return $this->belongsTo('Bank', 'bank', 'id');
    }

    /**
     * 查询记录
     * @param $id int 用户id
     * @return array
     */
    public function query_log($id)
    {
        $list = $this->where(array('uid' => $id, 'status' => 1))->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['id'] = $value['id'];
            $data[$key]['card'] = $value['card'];
            $data[$key]['name'] = $value['name'];
            $data[$key]['account'] = $value['account'];
            $data[$key]['address'] = $value['address'];
        }
        return $data;
    }

    /**
     * 修银行信息
     * @param $id
     * @param $data
     * @return $this
     */
    public function modify_log($id, $data)
    {
        $map['uid'] = $id;
        $map['bank'] = $data['bank'];
        $map['card'] = $data['card'];
        $map['time'] = time();
        return $this->update($map);
    }

    /**
     * 绑定信息
     * @param $id int 用户id
     * @param $account int 开户人姓名
     * @param $bank array 银行标示
     * @param $address string 开户行地址
     * @param $number string 银行卡号
     * @param $name string 银行名称
     * @return $this|int|string
     */
    public function add_log($id, $account, $bank, $address, $number, $bank_side, $name)
    {
        $map['uid'] = $id;
        $map['bank'] = $bank['id'];
        $map['name'] = $name;
        $map['bank_side'] = $bank_side;
        $map['card'] = $number;
        $map['account'] = $account;
        $map['address'] = $address;
        $map['time'] = time();
        $r = $this->insert($map);
        return $r;
    }

    /**
     * 解绑银行卡
     * @param $list array 绑定信息
     * @return $this
     */
    public function del_log($list)
    {
        $map['id'] = $list['id'];
        $map['status'] = 0;
        $map['time'] = time();
        return $this->update($map);
    }
}

