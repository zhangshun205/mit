<?php

namespace app\index\controller;

use think\Request;

use app\common\model\Agent;
use app\common\model\AgentWithdraw;
use app\common\model\AgentAccount;

class Agentwithdraws extends Common
{
    protected $Agent;
    protected $AgentWithdraw;
    protected $AgentAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Agent = new Agent();
        $this->AgentWithdraw = new AgentWithdraw();
        $this->AgentAccount = new AgentAccount();
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
            $user = $this->Agent->where('real_name|phone|name', 'like', "%$name%")->find();
            if (!empty($user)) {
                $map['uid'] = $user['id'];
            } else {
                $map['uid'] = 0;
            }
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->AgentWithdraw->query_log($map, $current_page, $this->num);
//        return json($list);
        $sum['withdraw_num'] = $this->AgentWithdraw->where($map)->sum('number');//提现申请总和
        $sum['fee_num'] = $this->AgentWithdraw->where($map)->sum('fee');//手续费总和
        $sum['num'] = $sum['withdraw_num'] - $sum['fee_num'];//到账总和
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('sum', $sum);
        $this->assign('list', $list['data']);
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
            $info = $this->AgentWithdraw->where('id', $id)->find();
            $account = $this->AgentAccount->where('uid', $info['uid'])->find();
//            $info['remark'] = empty($remark) ? $info['remark'] : $remark;
//            return $account;
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
        $this->AgentWithdraw->startTrans();
        $res1 = $this->AgentWithdraw->where('id', $info['id'])->update(array(
            'status' => 1,
            'hand_time' => $time,
//            'remark' => $info['remark'],
        ));
        if ($res1) {
            $this->AgentWithdraw->commit();
            $r = msg_handle('操作成功', 1);
        } else {
            $this->AgentWithdraw->rollback();
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
        $this->AgentAccount->startTrans();
        $res1 = $this->AgentAccount->where('uid', $account['uid'])
            ->inc('account', $info['number'])
//            ->dec('wit_total', $info['total'])
//            ->dec('wit_fee', $info['fee'])
            ->update();
        $res2 = $this->AgentWithdraw->where('id', $info['id'])->update(array(
            'status' => 2,
            'hand_time' => time(),
//            'remark' => $info['remark'],
        ));
        if (isset($res1) && $res2) {
            $this->AgentAccount->commit();
            $r = msg_handle('操作成功', 1);
        } else {
            $this->AgentAccount->rollback();
            $r = msg_handle('操作失败', 0);
        }
        return $r;
    }

}