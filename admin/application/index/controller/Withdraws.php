<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Plus;
use app\common\model\User;
use app\common\model\Withdraw;
use app\common\model\UserAccount;

class Withdraws extends Common
{
    protected $Plus;
    protected $User;
    protected $Withdraw;
    protected $UserAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Plus = new Plus();
        $this->User = new User();
        $this->Withdraw = new Withdraw();
        $this->UserAccount = new UserAccount();
    }

    /**
     * 申请提现列表
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $map = array();
        $name = trim(input('get.name'));
        if ($name) {
            $user = $this->User->where('real_name|phone|name', 'like', "%$name%")->find();
            if (!empty($user)) {
                $map['uid'] = $user['id'];
            } else {
                $map['uid'] = 0;
            }
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Withdraw->query_log($map, $current_page, $this->num);
        $sum['withdraw_num'] = $this->Withdraw->where($map)->sum('number');//提现申请总和
        $sum['fee_num'] = $this->Withdraw->where($map)->sum('fee');//手续费总和
        $sum['num'] = $sum['withdraw_num'] - $sum['fee_num'];//到账总和
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                //$list = $this->User->query($_post["excel"]);
//                $this->export($list['data']);
//            }
//        }
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('sum', $sum);
        $this->assign('list', $list['data']);
        $this->assign('a', input('a'));
        $this->assign('b', input('b'));
        return $this->fetch();
    }

    /**
     * 处理提现申请 同意OR拒绝
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function modify_withdrawals()
    {
        $id = trim(input('post.id/d'));
        $type = trim(input('post.type/d'));
        $remark = trim(input('post.remark/s'));
        if (!$id) {
            $r = msg_handle('错误操作', 0);
        } else {
            $info = $this->Withdraw->where('id', $id)->find();
            $account = $this->UserAccount->where('uid', $info['uid'])->find();
            $info['remark'] = empty($remark) ? $info['remark'] : $remark;
            if ($type == 1) {
                $r = $this->agree_data($info);
            } else {
                $r = $this->reject_data($account, $info);
            }
        }
        return json($r);
    }

    /**
     * @param $info
     * @return array
     * @throws \think\exception\PDOException
     */
    public function agree_data($info)
    {
        $time = time();
        $this->Withdraw->startTrans();
        $res1 = $this->Withdraw->where('id', $info['id'])->update(array(
            'status' => 1,
            'hand_time' => $time,
            'remark' => $info['remark'],
        ));
        if ($res1) {
            $this->Withdraw->commit();
            $r = msg_handle('操作成功', 1);
        } else {
            $this->Withdraw->rollback();
            $r = msg_handle('操作失败', 0);
        }
        return $r;
    }

    /**
     * 驳回操作
     * @param $account
     * @param $info
     * @return array
     * @throws \think\exception\PDOException
     */
    public function reject_data($account, $info)
    {
        $this->UserAccount->startTrans();
        $res1 = $this->UserAccount->where('uid', $account['uid'])
            ->inc('account', $info['number'])
            ->dec('wit_total', $info['total'])
            ->dec('wit_fee', $info['fee'])
            ->update();
        $res2 = $this->Withdraw->where('id', $info['id'])->update(array(
            'status' => 2,
            'hand_time' => time(),
            'remark' => $info['remark'],
        ));
        if (isset($res1) && $res2) {
            $this->UserAccount->commit();
            $r = msg_handle('操作成功', 1);
        } else {
            $this->UserAccount->rollback();
            $r = msg_handle('操作失败', 0);
        }
        return $r;
    }
}
