<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Plus;
use app\common\model\User;
use app\common\model\Recharge;
use app\common\model\UserAccount;

class Recharges extends Common
{
    protected $Plus;
    private $Recharge;
    protected $User;
    protected $UserAccount;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Plus = new Plus();
        $this->User = new User();
        $this->Recharge = new Recharge();
        $this->UserAccount = new UserAccount();
    }

    /**
     * 系统充值资金
     * @return mixed
     */
    public function system_recharge()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $user_map['name|phone|number'] = $name;
            $user = $this->User->where($user_map)->field('id')->find();
            $map['uid'] = empty($user_map) ? 0 : $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $list = $this->Plus->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        //如果url里含有excel参数，则将结果导出到Excel
//        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                //$list = $this->User->query($_post["excel"]);
//                $this->export_users($list['data']);
//            }
//        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        $this->assign('sum_number', $list['sum_number']);
        $this->assign('sum_total', $list['sum_total']);
        return $this->fetch();
    }

    /**
     * 充值记录
     * @return mixed
     */
    public function index()
    {
        $map = array();
        $name = input('get.name/s');
        if ($name) {
            $user = $this->User->where(array("phone|name|real_name|number" => $name))->find();
            if ($user) {
                $map['uid'] = $user["id"];
            } else {
                $map['uid'] = 0;
            }
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $list = $this->Recharge->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 处理充值申请 同意OR拒绝
     * @return \think\response\Json
     */
    public function modify_recharge()
    {
        $id = trim(input('post.id/d'));
        $type = trim(input('post.type/d'));
        $remark = trim(input('post.remark/s'));
        if (!$id) {
            $r = msg_handle('错误操作', 0);
        } else {
            $info = $this->Recharge->where('id', $id)->find();
            $account = $this->UserAccount->where('uid', $info['uid'])->find()->toArray();
            $info['remark'] = empty($remark) ? $info['remark'] : $remark;
            if ($type == 1) {
                $r = $this->agree_data($info, $account);
            } else {
                $r = $this->reject_data($info);
            }
        }
        return json($r);
    }

    /**
     * 同意充值
     * @param $info
     * @param $account
     * @return array
     */
    public function agree_data($info, $account)
    {
        $this->UserAccount->startTrans();
        $res1 = $this->UserAccount->where('uid', $account['uid'])
            ->inc('account', $info['number'])
            ->inc('rec_total', $info['number'])
            ->update();
        $res2 = $this->Recharge->where('id', $info['id'])->update(array(
            'status' => 1,
            'pay_time' => time(),
            'remark' => $info['remark'],
        ));
        if ($res1 && $res2) {
            $this->UserAccount->commit();
            $r = msg_handle('操作成功', 1);
        } else {
            $this->UserAccount->rollback();
            $r = msg_handle('操作失败', 0);
        }
        return $r;
    }

    /**
     * 驳回操作
     * @param $info
     * @return array
     */
    public function reject_data($info)
    {
        $this->Recharge->startTrans();
        $res = $this->Recharge->where('id', $info['id'])->update(array(
            'status' => 2,
            'pay_time' => time(),
            'remark' => $info['remark'],
        ));
        if ($res) {
            $this->Recharge->commit();
            $r = msg_handle('操作成功', 1);
        } else {
            $this->Recharge->rollback();
            $r = msg_handle('操作失败', 0);
        }
        return $r;
    }
}
