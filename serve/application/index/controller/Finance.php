<?php

namespace app\index\controller;

use app\index\model\CapitalFlow;
use app\index\model\Protocol;
use app\index\model\Recharge;
use app\index\model\User;
use app\index\model\UserAccount;
use app\index\model\Withdraw;
use think\Controller;
use think\Request;

class Finance extends Controller
{
    private $User;
    private $Protocol;
    private $Recharge;
    private $Withdraw;
    private $CapitalFlow;
    private $UserAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
        $this->Protocol = new Protocol();
        $this->Recharge = new Recharge();
        $this->Withdraw = new Withdraw();
        $this->CapitalFlow = new CapitalFlow();
        $this->UserAccount = new UserAccount();
    }

    public function recharge_info($user)
    {
        $account = $this->UserAccount->where(array('uid' => $user['id']))->find();
        $data['passageway'] = array(
            array('id' => 1, 'name' => '网银转账PA'),
            array('id' => 2, 'name' => '安全网银转账'),
            array('id' => 3, 'name' => '支付宝微信扫码支付-环球'),
            array('id' => 4, 'name' => '币宝支付'),
        );
        $data['number'] = $user['number'];
        $data['currency'] = 'USD';//货币名称
        $data['phone'] = '客服电话：出金时间早上9点-下午17点';
        $data['account'] = $account['account'];
        $data['content'] = $this->Protocol->query_log(3);
        return msg_handle('', 1, $data);
    }

    public function recharge($id = 1, $data = array())
    {
        $passageway = empty($data['passageway']) ? '1' : $data['passageway'];
        $number = empty($data['number']) ? '100' : $data['number'];
        if (!in_array($passageway, array(1, 2, 3, 4, 5))) {
            $r = msg_handle('入金通道选择错误', 0);
        } else if (empty($number)) {
            $r = msg_handle('充值金额不能为空', 0);
        } elseif (!preg_match(POSITIVE_INTEGER, $number)) {
            $r = msg_handle('充值金额必须为整数', 0);
        } elseif ($number % 100 != 0) {
            $r = msg_handle('充值金额必须为100的倍数', 0);
        } else {
            $account = $this->UserAccount->where(array('uid' => $id))->find();
            $res = $this->Recharge->add_log($id, $number, $account['account'], 0, $passageway, $account);
            if ($res) {
                $r = msg_handle('充值申请成功', 1);
            } else {
                $r = msg_handle('充值申请失败', 0);
            }
        }
        return $r;
    }

    /**
     * 充值记录
     * @param array $user
     * @return array
     */
    public function recharge_log($user = array(), $data)
    {
        $start = empty($data['start']) ? 0 : $data['start'];
        $end = empty($data['end']) ? 0 : $data['end'];
        $time_array = dateQuery(strtotime($start), strtotime($end));
        if ($time_array) {
            $map['time'] = $time_array;
        }
        $map['uid'] = $user['id'];
        $list = $this->Recharge->query_log($map, $user['number']);
        return msg_handle('', 1, $list);
    }

    /**
     * 提现记录
     * @param array $user
     * @param $data
     * @return array
     */
    public function withdraw_log($user = array(), $data)
    {
        $start = empty($data['start']) ? 0 : $data['start'];
        $end = empty($data['end']) ? 0 : $data['end'];
        $time_array = dateQuery(strtotime($start), strtotime($end));
        if ($time_array) {
            $map['time'] = $time_array;
        }
        $map['uid'] = $user['id'];
        $list = $this->Withdraw->query_log($map, $user['number']);
        return msg_handle('', 1, $list);
    }

    /**
     * 提现操作
     * @param $user
     * @param $data
     * @return array
     */
    public function withdraw($user, $data)
    {
        $number = empty($data['number']) ? 100 : $data['number'];
        $start = 9 * 60 * 60 + day_time();
        $end = 17.5 * 60 * 60 + day_time();
        if ($start > time() || $end < time()) {
            $r = msg_handle('提出申请为交易日早上9点至下午16点', 0);
        } else if (empty($number)) {
            $r = msg_handle('申请金额不能为空', 0);
        } elseif (!preg_match(POSITIVE_INTEGER, $number)) {
            $r = msg_handle('提现金额必须为整数', 0);
        } else {
            $account = $this->UserAccount->where(array('uid' => $user['id']))->find();
            if ($account['account'] < $number) {
                $r = msg_handle('你的账号余额不足', 0);
            } else {
                $r = $this->withdraw_data($user['id'], $number, 0, $account);
            }
        }
        return $r;
    }

    /**
     * 提现数据处理
     * @param $id int 用户id
     * @param $number int 提现数量
     * @param $fee float 提现手续费
     * @param $money float
     * @param $account array
     * @return array
     */
    private function withdraw_data($id, $number, $fee, $account)
    {
        $this->UserAccount->startTrans();
        $balance = $account['account'] - $number;
        $res1 = $this->UserAccount->withdraw_data($account, $number, $fee);
        $res2 = $this->Withdraw->add_log($id, $number, $balance, $fee, $account);
        $res3 = $this->CapitalFlow->add_log($id, $number, $balance, 2, 1, $account);
        if ($res1 && $res2 && $res3) {
            $this->UserAccount->commit();
            $r = msg_handle('提现申请成功', 1);
        } else {
            $this->UserAccount->rollback();
            $r = msg_handle('提现申请失败', 0);
        }
        return $r;
    }

}




















































