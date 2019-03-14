<?php

namespace app\index\model;

use think\Model;

class User extends Model
{
    protected $table = 'sn_user';

    public function account()
    {
        return $this->belongsTo('UserAccount', 'id', 'uid');
    }

    public function bank()
    {
        return $this->belongsTo('UserBank', 'id', 'uid');
    }

    /**
     * 验证token是否正确
     * @param $token
     * @return array|false|\PDOStatement|string|Model
     */
    public function verify_token($token)
    {
        return $this->where(array('token' => $token, 'status' => 1))->find();
    }

    /**
     * 查询信息
     * @param $map int 用户信息
     * @return array|false|\PDOStatement|string|Model
     */
    public function query_info($map)
    {
        return $this->where($map)->find();
    }

    /**
     * 登录处理
     * @param $list array 用户信息
     * @param $token
     * @return $this
     */
    public function login_data($list, $token)
    {
        $map['id'] = $list['id'];
        $map['last_time'] = $list['last_time'];
        $map['login_time'] = time();
        $map['login_ip'] = request()->ip();
        $map['token'] = $token;
        return $this->update($map);
    }

    /**
     * 验证手机号码
     * @param $phone
     * @return array|false|\PDOStatement|string|Model
     */
    public function verify_phone($phone)
    {
        return $this->where(array('phone' => $phone))->find();
    }

    /**
     * 验证邮箱
     * @param $mail
     * @return array|false|\PDOStatement|string|Model
     */
    public function verify_mail($mail)
    {
        return $this->where(array('mail' => $mail))->find();
    }

    /**
     * 注册用户
     * @param $phone  string 手机号码
     * @param $email string 邮箱信息
     * @param $real_name string 真实名称
     * @param $card string 身份证号
     * @param $password string 密码
     * @param $positive string 身份证正面
     * @param $other_side string 身份证背面
     * @param $reid int 推荐人id
     * @param $agent int 代理id
     * @param $staff int 员工id
     * @param $number int 登录账户
     * @return int|string
     */
    public function register($phone, $email, $real_name, $card, $password, $positive, $other_side, $reid, $agent, $staff, $number)
    {
        $map['phone'] = $phone;
        $map['mail'] = $email;
        $map['real_name'] = $real_name;
        $map['card'] = $card;
        $map['positive'] = $positive;
        $map['other_side'] = $other_side;
        $map['certified'] = 1;
        $map['password'] = md5($password);
        $map['number'] = $number;
        $map['reid'] = $reid;
        $map['agent'] = $agent;
        $map['staff'] = $staff;
        $map['password'] = md5($password);
        $map['time'] = time();
        return $this->insertGetId($map);
    }

    /**
     * 随机编号
     * @param string $number
     * @return string
     */
    public function number(&$number = '')
    {
        $str = substr(time(), -2, 2);
        $number = '0809' . $str . rand(100, 999);
        $r = $this->where(array('number' => $number))->find();
        if ($r) {
            $this->number($number);
        }
        return $number;
    }

    /**
     * 修改登录密码
     * @param $id int 用户id
     * @param $password string 密码
     * @return mixed
     */
    public function modify_login($id, $password)
    {
        $map['id'] = $id;
        $map['password'] = md5($password);
        $map['modify_time'] = time();
        return $this->update($map);
    }

    /**
     * 修改交易密码
     * @param $id int 用户id
     * @param $password string 密码
     * @return mixed
     */
    public function modify_security($id, $password)
    {
        $map['id'] = $id;
        $map['security'] = md5($password);
        $map['modify_time'] = time();
        return $this->update($map);
    }
}