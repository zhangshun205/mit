<?php

namespace app\index\controller;

use app\index\model\User;
use app\index\model\UserAccount;
use think\Controller;
use think\Request;

class Member extends Controller
{
    private $User;
    private $UserAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
        $this->UserAccount = new UserAccount();
    }

    /**
     * 账户信息
     * @param $data array
     * @return array
     */
    public function account_info($data)
    {
        $account = $this->UserAccount->where(array('uid' => $data['id']))->find();
        $depot = array('profit' => 0, 'market' => 0, 'bond');
        $list['name'] = $data['real_name'];
        $list['number'] = $data['number'];//账户编号
        $list['close_profit'] = num_data($account['profit_total']);//平仓盈亏
        $list['open_profit'] = num_data($depot['profit']);//持仓盈亏
        $list['static_interest'] = num_data(0);//静态收益
        $list['dynamic_interest'] = num_data($depot['market']);//动态收益
        $list['use_amount'] = num_data($account['account']);//可用资金
        $list['amount_proportion'] = num_data($account['bond'] / ($account['bond'] + $account['account']));//资金占比
        $list['currency'] = 'USD';//货币名称
        return msg_handle('', 1, $list);
    }

    /**
     * 修改密码
     * @param $user array 用户信息
     * @param $data array 提交信息
     * @return array
     */
    public function modify_login($user, $data)
    {
        $id = $user['id'];
        $old_password = empty($data['old_password']) ? '' : $data['old_password'];
        $password = empty($data['password']) ? '' : $data['password'];
        $confirm = empty($data['confirm']) ? '' : $data['confirm'];
        if (md5($old_password) != $user['password']) {
            $r = msg_handle('原密码输入错误', 0);
        } elseif (empty($password)) {
            $r = msg_handle('请输入新密码', 0);
        } elseif (empty($confirm)) {
            $r = msg_handle('确认新密码不能为空', 0);
        } elseif ($confirm != $password) {
            $r = msg_handle('两次输入新密码不一致', 0);
        } elseif (!reg_password($password)) {
            $r = msg_handle('新密码必须6-12位', 0);
        } else if ($this->User->modify_login($id, $password)) {
            $r = msg_handle('修改成功', 1);
        } else {
            $r = msg_handle('修改失败', 0);
        }
        return $r;
    }

    /**
     * 修改密码
     * @param $user array 用户信息
     * @param $data  array 提交信息
     * @return array
     */
    public function modify_security($user, $data)
    {
        $id = $user['id'];
        $old_password = empty($data['old_password']) ? '' : $data['old_password'];
        $password = empty($data['password']) ? '' : $data['password'];
        $confirm = empty($data['confirm']) ? '' : $data['confirm'];
        if (md5($old_password) != $user['security']) {
            $r = msg_handle('原密码输入错误', 0);
        } else if (empty($password)) {
            $r = msg_handle('请输入新密码', 0);
        } elseif (empty($confirm)) {
            $r = msg_handle('确认新密码不能为空', 0);
        } elseif ($confirm != $password) {
            $r = msg_handle('两次输入新密码不一致', 0);
        } elseif (!reg_password($password)) {
            $r = msg_handle('新密码必须6-12位', 0);
        } else if ($this->User->modify_security($id, $password)) {
            $r = msg_handle('修改成功', 1);
        } else {
            $r = msg_handle('修改失败', 0);
        }
        return $r;
    }
}