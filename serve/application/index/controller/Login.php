<?php

namespace app\index\controller;

use app\index\model\User;
use think\Controller;
use think\Request;

class Login extends Controller
{
    private $User;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
    }

    /**
     * 登录验证
     * @param $data array 介绍信息
     * @return array
     */
    public function index($data)
    {
        $name = empty($data['number']) ? '' : $data['number'];
        $password = empty($data['password']) ? '' : $data['password'];
        $type = empty($data['type']) ? 0 : $data['type'];//0 行情
        if (empty($name)) {
            $r = msg_handle('请输入登录账号', 0);
        } elseif (empty($password)) {
            $r = msg_handle('用户密码不能为空', 0);
        } elseif ($type != 0 && $type != 1) {
            $r = msg_handle('登录类型选择错误', 0);
        } else {
            $map['phone|name|number'] = $name;
            $map['password'] = md5($password);
            $user = $this->User->query_info($map);
            if (empty($user)) {
                $r = msg_handle('登录账号或密码错误', 0);
            } elseif ($user['status'] == 0) {
                $r = msg_handle('此用户已被暂停使用', 0);
            } else {
                if ($user['token']) {
                    $token = $user['token'];
                } else {
                    $token = createToken();
                }
                if ($this->User->login_data($user, $token)) {
                    session('id', $user['id']);
                    session('token', $token);
                    $r = msg_handle('', 1, array('token' => $token));
                } else {
                    $r = msg_handle('登录失败', 0);
                }
            }
        }
        return $r;
    }
}