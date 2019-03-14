<?php

namespace app\index\controller;

/**
 * 各种协议控制器
 */
use think\Request;
use app\common\model\Problem;
use app\common\model\ProblemType;

class Problems extends Common
{
    private $Problem;
    private $ProblemType;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Problem = new Problem();
        $this->ProblemType = new ProblemType();
    }

    /**
     * 问题列表
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $map_user['name|phone|real_name'] = $name;
            $user = $this->User->where($map_user)->field('id')->find();
            empty($user) ? $map['reply|content'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Problem->query_log($map, $current_page, $this->num);
        $types = $this->ProblemType->where('status', 1)->select();
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('types', $types);
        return $this->fetch();
    }

    /**
     * 问题回复
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function reply()
    {
        $id = Request::instance()->param('id');
        if ($id) {
            $list = $this->Problem->where('id', $id)->find();
            if ($list) {
                $type = $this->ProblemType->where('id', $list['type'])->find();
                $user = $this->User->where('id', $list['uid'])->find();
                $list['type'] = empty($type) ? '其他' : $type['name'];
                $list['time'] = detail_time($list['time']);
                $list['user'] = $user['name'] . '-' . $user['phone'];
                $this->assign('list', $list);
            } else {
                $this->redirect('Problems/index');
            }
        } else {
            $this->redirect('Problems/index');
        }
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 修改回复信息
     * @return array
     */
    public function replys()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['reply'])) {
                $r = msg_handle('请填写回复内容', 0);
            } else {
                $map['reply'] = $data['reply'];
                $map['reply_time'] = time();
                $map['status'] = 1;
                $list = $this->Problem->where('id', $data['id'])->update($map);
                if ($list) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('回复失败,请稍后重试!', 0);
                }
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $r;
    }

    /**
     * 问题分类
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function type()
    {
        $name = input('get.name');
        empty($name) ? $map = array() : $map['name'] = $name;
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->ProblemType->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 添加/修改功能
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function type_edit()
    {
        $id = Request::instance()->param('id');
        if ($id) {
            $list = $this->ProblemType->where('id', $id)->find();
            if ($list) {
                $this->assign('list', $list);
            } else {
                $this->redirect('Problems/type');
            }
        } else {
            $list = array('id' => '', 'name' => '', 'status' => '');
            $this->assign('list', $list);
        }
        return $this->fetch();
    }

    /**
     * 修改问题分类
     * @return array
     */
    public function type_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入公告名称', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择状态', 0);
            } else {
                $data['time'] = $map['time'] = time();
                if (empty($data['id'])) {
                    $list = $this->ProblemType->insert($data);
                } else {
                    $map['name'] = $data['name'];
                    $map['status'] = $data['status'];
                    $list = $this->ProblemType->where('id', $data['id'])->update($map);
                }
                if ($list) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('操作失败,未改动数据!', 0);
                }
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $r;
    }

    /**
     * 问题分类删除
     * @return array
     */
    public function type_del()
    {
        if (request()->isAjax()) {
            $id = input('?post.id');
            $list = $this->ProblemType->where('id', $id)->delete();
            if ($list) {
                $r = msg_handle('操作成功', 1);
            } else {
                $r = msg_handle('操作失败', 0);
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $r;
    }
}
