<?php

namespace app\index\controller;

use app\index\model\SendSms;
use app\index\model\User;
use think\Controller;
use think\Request;

class PhoneCode extends Controller
{
    private $User;
    private $SendSms;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
        $this->SendSms = new SendSms();
    }

    /**
     * 修改密码
     * @param $user array
     * @return array
     */
    public function modify_password($user)
    {
        $phone = empty($user['phone']) ? '' : $user['phone'];
        $r = $this->check_data($phone, 3);
        if ($r['code']) {
            $code = $this->phone_code($phone);
            $msg = '你的验证码发送成功,请注意查收' . $code;
            $r = msg_handle('你的验证码发送成功,请注意查收' . $code, 1);
            $this->SendSms->add_log(0, 0, $phone, 0, $msg);
        }
        return $r;
    }

    /**
     * 注册短信验证码
     * @param $data array
     * @return array
     */
    public function register_code($data)
    {
        $phone = empty($data['phone']) ? '' : $data['phone'];
        $r = $this->check_data($phone, 0);
        if ($r['code']) {
            $code = $this->phone_code($phone);
            $msg = '你的验证码发送成功,请注意查收' . $code;
            $r = msg_handle('你的验证码发送成功,请注意查收'. $code, 1);
            $this->SendSms->add_log(0, 0, $phone, 0, $msg);
        }
        return $r;
    }

    /**
     * 修改密码获取手机验证码
     * @param $data array
     * @return \think\response\Json
     */
    public function forget_password($data)
    {
        $phone = empty($data['phone']) ? '' : $data['phone'];
        $r = $this->check_data($phone, 1);
        if ($r['code']) {
            $code = $this->phone_code($phone);
            $msg = '你的验证码发送成功,请注意查收' . $code;
            $this->SendSms->add_log($r['data']['id'], $r['data']['name'], $phone, 1, $msg);
            $r = msg_handle('你的验证码发送成功,请注意查收' . $code, 1);
        }
        return $r;
    }

    /**
     * 检查数据
     * @param $phone string 手机号码
     * @param $type  int 0 新手机注册：1 已注册手机检查
     * @return array
     */
    private function check_data($phone, $type)
    {
        if (empty($phone)) {
            $r = msg_handle('输入注册手机号码', 0);
        } elseif (!reg_phone($phone)) {
            $r = msg_handle('手机号码格式不正确', 0);
        } else {
            $list = $this->User->verify_phone($phone);
            if ($type == 0 && $list) {
                $r = msg_handle('手机号码已被注册', 0);
            } elseif ($type == 1 && empty($list)) {
                $r = msg_handle('手机号码尚未注册', 0);
            } else {
                $r = msg_handle('', 1, $list);
            }
        }
        return $r;
    }

    /**
     * 发送手机验证码
     * @param $phone string 手机号码
     * @return int
     */
    private function phone_code($phone)
    {
        $code = rand(100000, 999999);
        session('code', $code);
        session('phone', $phone);
//        msg_code($code, $phone);
        return $code;
    }
}





