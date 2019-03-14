<?php

namespace app\index\controller;

/**
 * 各种协议控制器
 */
use think\Request;
use app\common\model\Protocol;
use app\common\model\Notice;
use app\common\model\News as Newss;

class Protocols extends Common
{
    private $Protocol;
    private $Notice;
    private $Newss;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Protocol = new Protocol();
        $this->Notice = new Notice();
        $this->Newss = new Newss();
    }

    /**
     * 新闻列表
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function news()
    {
        $name = trim(input('get.name/s'));
        empty($name) ? $map = array() : $map['title|content'] = ['like', "%$name%"];
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Newss->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('a', input('a'));
        $this->assign('b', input('b'));
        return $this->fetch();
    }

    /**
     * 修改新闻
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function news_edit()
    {

        $id = Request::instance()->param('id');
        if ($id) {
            $list = $this->Newss->where('id', $id)->find();
            if ($list) {
                $this->assign('list', $list);
            } else {
                $this->redirect('Protocols/news');
            }
        } else {
            $list = array('id' => '', 'title' => '', 'status' => '', 'content' => '');
            $this->assign('list', $list);
        }
        return $this->fetch();
    }

    /**
     * 执行修改新闻内容
     * @return array
     */
    public function news_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $data['time'] = time();
            if (empty($data['title'])) {
                $r = msg_handle('请输入新闻标题', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择状态', 0);
            } elseif (empty($data['content'])) {
                $r = msg_handle('请输入新闻内容', 0);
            } else {

                $data['time'] = $map['time'] = time();
                if (empty($data['id'])) {
                    $list = $this->Newss->insert($data);
                } else {
                    $map['title'] = $data['title'];
                    $map['status'] = $data['status'];
                    $map['content'] = $data['content'];
                    $list = $this->Newss->where('id', $data['id'])->update($map);
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

    /**删除协议
     * @return array
     */
    public function news_del()
    {
        if (request()->isAjax()) {
            $id = $_POST['id'];
            $list = $this->Newss->where('id', $id)->delete();
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

    /**
     * 各种协议
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function agree()
    {
        $name = input('get.name');
        empty($name) ? $map = array() : $map['title'] = ['like', "%$name%"];
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Protocol->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('a', input('a'));
        $this->assign('b', input('b'));
        return $this->fetch();
    }

    /**
     * 添加/修改功能
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function agree_edit()
    {
        $id = Request::instance()->param('id');
        if ($id) {
            $list = $this->Protocol->where('id=' . $id)->find();
            if ($list) {
                $this->assign('list', $list);
            } else {
                $this->redirect('Protocols/agree');
            }
        } else {
            $list = array('id' => '', 'title' => '', 'status' => '', 'content' => '');
            $this->assign('list', $list);
        }
        return $this->fetch();
    }

    /**
     * 修改协议信息
     * @return array
     */
    public function agree_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $data['time'] = time();
            if (empty($data['title'])) {
                $r = msg_handle('请输入协议标题', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择状态', 0);
            } elseif (empty($data['content'])) {
                $r = msg_handle('请输入协议内容', 0);
            } else {

                $data['time'] = $map['time'] = time();
                if (empty($data['id'])) {
                    $list = $this->Protocol->insert($data);
                } else {
                    $map['title'] = $data['title'];
                    $map['status'] = $data['status'];
                    $map['content'] = $data['content'];
                    $list = $this->Protocol->where('id', $data['id'])->update($map);
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
     * 系统公告
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function notice()
    {
        $name = input('get.name');
        empty($name) ? $map = array() : $map['title'] = $name;
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Notice->query_log($map, $current_page, $this->num);
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
    public function notice_edit()
    {
        $id = Request::instance()->param('id');
        if ($id) {
            $list = $this->Notice->where('id', $id)->find();
            if ($list) {
                $this->assign('list', $list);
            } else {
                $this->redirect('Protocols/notice');
            }
        } else {
            $list = array('id' => '', 'title' => '', 'status' => '', 'content' => '');
            $this->assign('list', $list);
        }
        return $this->fetch();
    }

    /**
     * 修改协议信息
     * @return array
     */
    public function notice_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $data['time'] = time();
            if (empty($data['title'])) {
                $r = msg_handle('请输入公告名称', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择状态', 0);
            } elseif (empty($data['content'])) {
                $r = msg_handle('请输入公告内容', 0);
            } else {

                $data['time'] = $map['time'] = time();
                if (empty($data['id'])) {
                    $list = $this->Notice->insert($data);
                } else {
                    $map['title'] = $data['title'];
                    $map['status'] = $data['status'];
                    $map['content'] = $data['content'];
                    $list = $this->Notice->where('id', $data['id'])->update($map);
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
     * 上传图片
     */
    public function upload()
    {
        $file = request()->file('file');
        if ($file) {
            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if ($info) {
                echo $info->getSaveName();
            } else {
                echo $file->getError();
            }
        }
    }
}
