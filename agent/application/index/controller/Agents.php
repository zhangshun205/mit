<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Agent;
use app\common\model\Account;
use app\common\model\User;

/**
 * 代理信息
 * Class Agents
 * @package app\index\controller
 */
class Agents extends Common
{
    protected $Agent;
    protected $Account;
    protected $User;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Agent = new Agent();
        $this->User = new User();
        $this->Account = new Account();
    }

    /**
     * 修改代理信息
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $id = session('admin_id');
        $list = $this->Agent->where('id', $id)->find();
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 代理信息修改执行
     * @return \think\response\Json
     */
    public function agent_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入代理商昵称', 0);
            } elseif (empty($data['number'])) {
                $r = msg_handle('请输入代理商编号', 0);
            } elseif (empty($data['real_name'])) {
                $r = msg_handle('请输入真实姓名', 0);
            } elseif (empty($data['phone'])) {
                $r = msg_handle('请输入手机号', 0);
            } else {
                $data['password'] = empty($data['password']) ? '' : md5($data['password']);
                $data['security'] = empty($data['security']) ? '' : md5($data['security']);
                $data = array_filter($data);
                $data['modify_time'] = time();
                $list = $this->Agent->where('id', $data['id'])->update($data);
                if ($list) {
                    $r = msg_handle('操作成功！', 1);
                } else {
                    $r = msg_handle('操作失败！', 0);
                }
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return json($r);
    }

    /**
     * 客户资料
     * @return mixed
     */
    public function customer()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        empty($name) ? $map = array() : $map['name|phone|number'] = ['like', $name];
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $map['agent'] = session('admin_id');
        $list = $this->User->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['acc']);
        return $this->fetch();
    }

    /**
     * 修改用户状态 1用户 2代理
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function edit()
    {
        $id = Request::instance()->param('id');
        $type = Request::instance()->param('type');
        if (empty($id)) {
            $r = msg_handle('操作失败', 0);
        } else {
            $model = empty($type) ? 'User' : 'Agent';
            $user = $this->$model->find($id);
            $data['status'] = $user['status'] != 1 ? 1 : 0;
            $data['modify_time'] = time();
            $res = $this->$model->where('id', $id)->update($data);
            if ($res) {
                $r = msg_handle('操作成功', 1);
            } else {
                $r = msg_handle('操作失败', 0);
            }
        }
        return json($r);
    }

    /**
     * 下级代理商
     * @return mixed
     */
    public function second()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        empty($name) ? $map = array() : $map['name|phone|number|real_name'] = ['like', "%$name%"];
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $map['agent'] = session('admin_id');
        $list = $this->Agent->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 添加代理/加载页面
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function agent_add()
    {
        $id = Request::instance()->param('id');
        $adminId = session('admin_id');
        if (!$id) {
            $list = array('id' => '0', 'name' => '', 'phone' => '', 'real_name' => '', 'type' => '', 'number' => '', 'fee_ratio' => '');
        } else {
            $list = $this->Agent->where('id', $id)->find();
        }
        $agents = $this->Agent->where(array('agent' => $adminId))->whereOr('id', $adminId)->select();
        $this->assign("agent", $agents);
        $this->assign("list", $list);
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
        if ($_POST) {
            $data = $_POST['arr'];
            if (empty($data["name"])) {
                $r = msg_handle('代理昵称不能为空', 0);
            } else if (empty($data["real_name"])) {
                $r = msg_handle('真实姓名不能为空', 0);
            } else if (empty($data["phone"])) {
                $r = msg_handle('请输入代理手机号', 0);
            } elseif (empty($data['number'])) {
                $r = msg_handle('请输入代理商编号', 0);
            } elseif (empty($data['fee_ratio'])) {
                $r = msg_handle('请输入佣金比例', 0);
            } elseif ($data['fee_ratio'] < 0 || $data['fee_ratio'] > 1) {
                $r = msg_handle('请输入0-1之间的佣金比例', 0);
            } elseif ($this->Agent->where(array('phone' => $data['phone']))->where('id !=' . $data['id'])->find()) {
                $r = msg_handle('手机号码已使用', 0);
            } else {
                if (!empty($data['id'])) {
                    $data['password'] = empty($data['password']) ? md5(123456) : md5($data['password']);
                    $data['security'] = empty($data['security']) ? md5(123456) : md5($data['security']);
                } else {
                    $data['password'] = empty($data['password']) ? '' : md5($data['password']);
                    $data['security'] = empty($data['security']) ? '' : md5($data['security']);
                }
                $data = array_filter($data);
                $data['time'] = $data['modify_time'] = time();
                $adminId = session('admin_id');
                if ($data["agent"]) {
                    $recom_user = $this->Agent->where('id', $data['agent'])->field('id,grade')->find()->toArray();
                } else {
                    $recom_user = $this->Agent->where('id', $adminId)->field('id,grade')->find();
                }
                $data["grade"] = $recom_user['grade'] + 1;
                $this->Agent->startTrans();
                $res1 = empty($data['id']) ? $this->Agent->insert($data) : $this->Agent->where('id', $data['id'])->update($data);
                $res2 = 1;//$this->UserAccount->add_log($res1, $data['phone']);
                if ($res1 && $res2) {
                    $this->Agent->commit();
                    $r = msg_handle('操作成功!', 1);
                } else {
                    $this->Agent->rollback();
                    $r = msg_handle('操作失败！', 0);
                }
            }
        } else {
            $r = msg_handle('错误请求！', 0);
        }
        return json($r);
    }

}
