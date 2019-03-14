<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Agent;

//use app\common\model\AgentWith;
//use app\common\model\AgentAcc;
use app\common\model\Agentinfo;

//use app\common\model\StaffAcc;
//use app\common\model\AgentFee;
use think\Session;

/*
 * 代理管理
 */

class Agents extends Common
{
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Agent = new Agent();
//        $this->AgentWith = new AgentWith();
//        $this->AgentAcc = new AgentAcc();
//        $this->StaffAcc = new StaffAcc();
        $this->Agentinfo = new Agentinfo();
//        $this->AgentFee = new AgentFee();
    }

    //登录后台
    public function login()
    {
        $requset = \think\Request::instance();
        if ($requset->isGet()) {
            $id = $requset->param('id');
            $where = ['id' => $id];
            $num = $this->Agent->where($where)->find();
//查询出后台管理员表  name=num的信息
            session('dladmin', $num);
            session('dladmin_id', $num['id']);
            if ($num) {
                $data['status'] = 1;
                $data['msg'] = '登陆成功';
                $this->redirect('/agent/index/index');
            } else {
                $data['status'] = 0;
                $data['msg'] = '登陆失败';
            }
            return json($data);
        }
    }

    //登录员工后台
    public function login_agent()
    {
        $requset = \think\Request::instance();
        if ($requset->isGet()) {
            $id = $requset->param('id');
            $where = ['id' => $id];
            $num = $this->Agentinfo->where($where)->find();
//查询出后台管理员表  name=num的信息
            session('ygadmin', $num);
            session('ygadmin_id', $num['id']);
//            dump($num);die;
            if ($num) {
                $data['status'] = 1;
                $data['msg'] = '登陆成功';
                $this->redirect('/agents/index/index');
            } else {
                $data['status'] = 0;
                $data['msg'] = '登陆失败';
            }
            return json($data);
        }
    }

    //登录后台
    public function logins()
    {
        $requset = \think\Request::instance();
        if ($requset->isGet()) {
            $id = $requset->param('id');
            $where = ['id' => $id];
            $num = $this->Agentinfo->where($where)->find();
//查询出后台管理员表  name=num的信息
            session('dladmin', $num);
            session('dladmin_id', $num['id']);
            if ($num) {
                $data['status'] = 1;
                $data['msg'] = '登陆成功';
                $this->redirect('/agents/index/index');
            } else {
                $data['status'] = 0;
                $data['msg'] = '登陆失败';
            }
            return json($data);
        }
    }

    /**
     * 代理列表
     * @return mixed
     */
    public function index()
    {
        $map = array();
        //获取并设定查询条件
        $number = input('get.number');
        $phone = input('get.phone');
        if ($phone) {
            $map['phone'] = $phone;
        }
        if ($number) {
            $map['number'] = $number;
        }
        //查询结果
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Agent->query_log($map, $current_page, $this->num);
//        return json($list);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        $fee_ratio = $this->Agent->sum('fee_ratio');
//        $defer_ratio = $this->Agent->sum('defer_ratio');
//        $wit_ratio = $this->Agent->sum('wit_ratio');
//        $this->assign('fee_ratio', $fee_ratio);
//        $this->assign('defer_ratio', $defer_ratio);
//        $this->assign('wit_ratio', $wit_ratio);
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 删除代理
     * @return \think\response\Json
     */
    public function del()
    {
        if (request()->isAjax()) {
            $id = input('post.id');
            $cout = $this->Agent->where('agent', $id)->count();
//            return $cout;
            if ($cout) {
                $r = msg_handle('此代理下存在代理,请先删除', 0);
            } elseif ($this->Agent->where('id', $id)->delete()) {
                $r = msg_handle('删除成功', 1);
            } else {
                $r = "操作失败,请稍后重试";
            }
        } else {
            $r = msg_handle('错误请求！', 0);
        }
        return json($r);
    }

    public function agentflow()
    {
        return $this->error('123');
    }

    /**
     * 添加代理/加载页面
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function add_agent()
    {
        $id = Request::instance()->param('id');
        if ($id) {
            $map['id'] = $id;
            $agentInfo = $this->Agent->where($map)->find();
        } else {
            $agentInfo = array(
                'agent' => '',
                'id' => '0',
                'name' => '',
                'phone' => '',
                'real_name' => '',
                'bank_account' => '',
                'bank_card' => '',
                'bank_name' => '',
                'bank_address' => '',
                'number' => '',
                'password' => '',
                'status' => '',
                'fee_ratio' => '',
                'remake' => '',
            );
        }
        $agents = $this->Agent->where(array('grade' => ['lt', 3],))->select();
        $this->assign("list", $agentInfo);
        $this->assign("agents", $agents);
        return $this->fetch();
    }

    /**
     * 添加/修改代理执行
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function agent_adds()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data["number"])) {
                $r = msg_handle('代理编号不能为空', 0);
            } else if (empty($data["name"])) {
                $r = msg_handle('名称不能为空', 0);
            } else if (empty($data["phone"])) {
                $r = msg_handle('请输入用户手机号', 0);
            } else {
                $data["agent"] = empty($data["agent"]) ? 0 : $data["agent"];
                if ($data['id']) {
                    $agentMap['number'] = $data['number'];
                    $agentMap['id'] = ['neq', $data['id']];
                    if (empty($data['password'])) {
                        unset($data['password']);
                    } else {
                        $data['password'] = md5($data['password']);
                    }
                } else {
                    $agentMap['number'] = $data['number'];
                    $data['password'] = empty($data['password']) ? md5("123456") : md5($data['password']);
                }
                $data['modify_time'] = time();
                $agent = $this->Agent->where($agentMap)->find();
                if ($agent) {
                    $r = msg_handle('代理编号已存在', 0);
                } else {
                    $this->Agent->startTrans();
                    if ($data['id']) {
                        $res1 = $this->Agent->where('id', $data['id'])->update($data);
                        $res2 = 1;//$this->UserAccount->add_log($res1, $data['phone']);//代理账户预留
                    } else {
                        $res1 = $this->Agent->insert($data);
                        $res2 = 1;//代理账户预留
                    }
                    if ($res1 && $res2) {
                        $this->Agent->commit();
                        $r = msg_handle('操作成功!', 1);
                    } else {
                        $this->Agent->rollback();
                        $r = msg_handle('操作失败！', 0);
                    }
                }
            }
        } else {
            $r = msg_handle('错误请求！', 0);
        }
        return json($r);
    }

    /**
     * 修改代理状态
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function agent_edit()
    {
        $id = Request::instance()->param('id');
        $type = Request::instance()->param('type');
        if (empty($id)) {
            $r = msg_handle('操作失败', 0);
        } else {
            $user = $this->Agent->find($id);
            if ($type == 1) {
                $data['status'] = $user['status'] != 1 ? 1 : 0;
            } else {
                $data['status'] = 1;
            }
            $data['modify_time'] = time();
            $res = $this->Agent->where('id', $id)->update($data);
            if ($res) {
                $r = msg_handle('操作成功', 1);
            } else {
                $r = msg_handle('操作失败', 0);
            }
        }
        return json($r);
    }

    /**
     * 员工列表
     * @return mixed
     *
     */
    public function staff()
    {
        $id = Request::instance()->param('id');
        $m = ['aid' => $id];
        $map = $this->query_time($m, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Agentinfo->log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 员工添加
     * @return mixed
     *
     */
    public function add_staff()
    {
        //获取代理名作为选项
        $agent = $this->Agent->select();
        if ($agent) {
            $this->assign('agent', $agent);
        } else {
            $list = array('id' => '', 'name' => '', 'agent' => '', 'number' => '', 'bank_name' => '', 'bank_address' => '', 'bank_account' => '', 'bank_card' => '', 'withdrawals_status' => '1', 'agent_url' => '', 'password' => '', 'real_name' => '', 'bond' => '', 'ratio' => '', 'phone' => '', 'pic' => '', 'status' => '1',);
            $this->assign('list', $list);
        }
        $this->assign('agent', $agent);
        //获取要添加的员工信息
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['num_name'])) {
                $r = msg_handle('员工编号不能为空', 0);
            } elseif (empty($data['password'])) {
                $r = msg_handle('密码不能为空', 0);
            } elseif (!preg_match(REG_PASS, $data['password'])) {
                $r = msg_handle('密码为6-12位字母数字组合', 0);
            } elseif (empty($data['name'])) {
                $r = msg_handle('员工名称不能为空', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择员工状态', 0);
            } elseif (empty($data['bank'])) {
                $r = msg_handle('提现银行卡号不能为空', 0);
            } elseif (!preg_match(REG_BANKCARD, $data['bank'])) {
                $r = msg_handle('银行卡号格式错误', 0);
            } elseif (empty($data['bank_status'])) {
                $r = msg_handle('请选择提现状态', 0);
            } elseif (empty($data['cont_name'])) {
                $r = msg_handle('真实姓名不能为空', 0);
            } elseif (empty($data['cont_phone'])) {
                $r = msg_handle('手机号不能为空', 0);
            } elseif (!preg_match(REG_PHONE, $data['cont_phone'])) {
                $r = msg_handle('手机号格式错误', 0);
            } elseif (empty($data['bond'])) {
                $r = msg_handle('保证金不能为空', 0);
            } elseif (empty($data['com_fee'])) {
                $r = msg_handle('手续费提成比例不能为空', 0);
            } elseif (empty($data['defer_ratio'])) {
                $r = msg_handle('递延费提成比例不能为空', 0);
            } else {
                $user = $this->Agentinfo->where('cont_phone', $data['cont_phone'])->find();
                if ($user) {
                    $r = msg_handle('该手机号已存在', 0);
                    return json($r);
                }
                $data['password'] = md5($data['password']);
                //将员工信息写入数据库
                $res = $this->Agentinfo->insert($data);
                if ($res) {
                    //获取插入的用户ID
                    $uid = $this->Agentinfo->getLastInsID();
                    //将添加员工记录写入操作记录
                    $da['uid'] = session('admin')['id'];
                    $da['time'] = time();
                    $da['desc'] = '管理员' . session('admin')['name'] . '添加了代理ID为' . $data['aid'] . '的,编号为' . $data['num_name'] . '的员工';
                    $this->admin_log($da);
                    $admin = ['uid' => $uid];
                    $id = $this->StaffAcc->insert($admin);
                    if ($id) {
                        $r = msg_handle('操作成功', 1);
                    } else {
                        $r = msg_handle('操作失败', 0);
                    }
                } else {
                    $r = msg_handle('操作失败', 0);
                }
            }
            return json($r);
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $this->fetch();
    }

    /**
     * 修改员工信息
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function edit_staff()
    {
        $id = Request::instance()->param('id');
        $agent = $this->Agent->select();
        $list = $this->Agentinfo->where(array('id' => $_GET['id']))->find()->toArray();
        $this->assign('list', $list);
        $this->assign('agent', $agent);
        return $this->fetch();
    }

    public function staff_rech()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['password'])) {
                $r = msg_handle('密码不能为空', 0);
            } elseif (!preg_match(REG_PASS, $data['password'])) {
                $r = msg_handle('密码为6-12位字母数字组合', 0);
            } elseif (empty($data['name'])) {
                $r = msg_handle('员工名称不能为空', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择员工状态', 0);
            } elseif (empty($data['bank'])) {
                $r = msg_handle('提现银行卡号不能为空', 0);
            } elseif (!preg_match(REG_BANKCARD, $data['bank'])) {
                $r = msg_handle('银行卡号格式错误', 0);
            } elseif (empty($data['bank_status'])) {
                $r = msg_handle('请选择提现状态', 0);
            } elseif (empty($data['cont_name'])) {
                $r = msg_handle('真实姓名不能为空', 0);
            } elseif (empty($data['cont_phone'])) {
                $r = msg_handle('手机号不能为空', 0);
            } elseif (!preg_match(REG_PHONE, $data['cont_phone'])) {
                $r = msg_handle('手机号格式错误', 0);
            } elseif (empty($data['bond'])) {
                $r = msg_handle('保证金不能为空', 0);
            } elseif (empty($data['com_fee'])) {
                $r = msg_handle('手续费提成比例不能为空', 0);
            } elseif (empty($data['defer_ratio'])) {
                $r = msg_handle('递延费提成比例不能为空', 0);
            } else {
                $user = $this->Agentinfo->where('cont_phone', $data['cont_phone'])->where('num_name', '<>', $data['num_name'])->find();
                if ($user) {
                    $r = msg_handle('该手机号已存在', 0);
                    return json($r);
                }
                $data['password'] = md5($data['password']);
                //更新数据库表
                $res = $this->Agentinfo->where('id', $data['id'])->update($data);
                if ($res) {
                    $da['uid'] = session('admin')['id'];
                    $da['time'] = time();
                    $da['desc'] = '管理员' . session('admin')['name'] . '修改了编号为' . $data['num_name'] . '的员工信息';
                    $this->admin_log($da);
                    $r = msg_handle('信息修改成功', 1);
                } else {
                    $r = msg_handle('操作失败，未改动数据', 0);
                }
            }
            return json($r);
        } else {
            $r = msg_handle('错误操作', 0);
        }
    }


    /**
     * 用户开启/关闭
     * @return mixed
     */
    public function staff_recharge()
    {
        $id = $_POST['id'];
        $edit_type = $_POST['edit_type'];
        if (!$id) {
            $this->redirect('Agents/index');
        }
        if ($edit_type == 0) {
            $data['status'] = 0;
            $data['bank_status'] = 0;
            $res = $this->Agentinfo->where('id', $id)->update($data);
            $da['uid'] = session('admin')['id'];
            $da['time'] = time();
            if ($id) {
                $da['desc'] = '管理员' . session('admin')['name'] . '开启ID为' . $id . '的代理功能';
            } else {
                $r = msg_handle('操作错误', 0);
            }
            $this->admin_log($da);
            if ($res) {
                $r = msg_handle('修改成功', 1);
            } else {
                $r = msg_handle('修改失败', 0);
            }
            return json($r);
        } else {
            $data['status'] = 1;
            $data['bank_status'] = 1;
            $res = $this->Agentinfo->where('id', $id)->update($data);
            $da['uid'] = session('admin')['id'];
            $da['time'] = time();
            if ($id) {
                $da['desc'] = '管理员' . session('admin')['name'] . '锁定ID为' . $id . '的代理功能';
            } else {
                $r = msg_handle('操作错误', 0);
            }
            $this->admin_log($da);
            if ($res) {
                $r = msg_handle('修改成功', 1);
            } else {
                $r = msg_handle('修改失败', 0);
            }
            return json($r);
        }
    }

    /**
     * 佣金明细
     * @return mixed
     */
    public function detail()
    {
        $map = $this->query_time('', input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->AgentFee->total($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 佣金提现
     * @return mixed
     */
    public function withdraw()
    {
        $m = array();
        $phone = trim(input('get.phone'));
        if ($phone) {
            $phone = [
                'phone' => ['like', "%$phone%"]
            ];
            $user = $this->Agent->where($phone)->find();
            $m['uid'] = $user['id'];
        }
        $map = $this->query_time($m, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->AgentWith->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $number = $this->AgentWith->where($map)->sum('number');
        $fee = $this->AgentWith->where($map)->sum('fee');
        $this->assign('number', $number);
        $this->assign('fee', $fee);
        $this->assign('total', $number - $fee);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 处理提现申请 同意OR拒绝
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function pass()
    {
        $id = $_POST['id'];
        $edit_type = $_POST['edit_type'];
        if (!$id) {
            $this->redirect('Agents/withdraw');
        }
        $info = $this->AgentWith->where('id=' . $id)->find()->toArray();
        if ($info['agent'] == 0) {
            $account = $this->StaffAcc->where('uid', $info['staff'])->find();
        } else {
            $account = $this->AgentAcc->where('uid', $info['agent'])->find();
        }
        if ($edit_type == 1) {
            if ($info['agent'] == 0) {
                $res1 = $this->StaffAcc->where('uid', $info['staff'])->setInc('wit_total', $info['number']); //交易账户累计提现
            } else {
                $res1 = $this->AgentAcc->where('uid', $info['agent'])->setInc('wit_total', $info['number']); //交易账户累计提现
            }
            if ($res1) {
                $data['pay_time'] = time();
                $data['status'] = 1;
                $res = $this->AgentWith->where('id', $id)->update($data);
                if ($res) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('操作失败', 0);
                }
                return json($r);
            }
        } else {
            $da = [
                'account' => $account['account'] + $info['number'] + $info['fee']
            ];
            if ($info['agent'] == 0) {
                $res1 = $this->StaffAcc->where('uid', $info['staff'])->update($da); //返回提现金额
            } else {
                $res1 = $this->AgentAcc->where('uid', $info['agent'])->update($da); //返回提现金额
            }
            if ($res1) {
                $data['pay_time'] = time();
                $data['status'] = 2;
                if ($info['agent'] == 0) {
                    $res = $this->AgentWith->where('id', $id)->update($data);
                } else {
                    $res = $this->AgentWith->where('id', $id)->update($data);
                }
                if ($res) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('操作失败', 0);
                }
            }
            return json($r);
        }
    }

    /**
     * 佣金统计
     * @return mixed
     */
    public function total()
    {
        $m = array();
        $map = $this->query_time($m, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->AgentFee->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }
}

?>