<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Core;
use app\common\model\Closed;
use app\common\model\Variety;
use app\common\model\WebsiteSet;
use app\common\model\Exchange;
use think\Session;

class System extends Common
{
    private $Core;
    private $Closed;
    private $Variety;
    private $WebsiteSet;
    private $Exchange;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Core = new Core();
        $this->Closed = new Closed();
        $this->Variety = new Variety();
        $this->WebsiteSet = new WebsiteSet();
        $this->Exchange = new Exchange();
    }

    /**
     * 系统设置
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function core()
    {
        $list = $this->Core->where(1)->find();
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 修改系统设置
     * @return array
     */
    public function core_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $data['time'] = time();
            if (empty($data['exchange_rate'])) {
                $r = msg_handle('请输入出入金汇率', 0);
            } elseif (empty($data['bonus_rate'])) {
                $r = msg_handle('请输入佣金汇率', 0);
            } elseif (empty($data['season'])) {
                $r = msg_handle('请选择时令', 0);
            } elseif (empty($data['user_name'])) {
                $r = msg_handle('请输入银行开户名', 0);
            } elseif (empty($data['bank_name'])) {
                $r = msg_handle('请输入银行开户行', 0);
            } elseif (empty($data['bank_card'])) {
                $r = msg_handle('请输入银行卡号', 0);
            } else {

                $data['time'] = $map['time'] = time();
                if ($this->Core->where('id', $data['id'])->update($data)) {
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
     * 退出登录
     */
    public function logout()
    {
        Session::clear();
        $this->redirect('/');
    }

    /**
     * 系统节日休市
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function closed()
    {
        $map = array();
        $name = input('get.name/s');
        if ($name) {
            $variety = $this->Variety->where(array("code|name|short" => ['like', $name]))->find();
            empty($variety) ? $map['explain'] = ['like', "%$name%"] : $map['future'] = $variety['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Closed->query_log($map, $current_page, $this->num);
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
     * 添加/修改节日休市
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function closed_edit()
    {
        $id = Request::instance()->param('id');
        $exId = Request::instance()->param('exchange');
        if ($exId) {
            $exchange = $this->Exchange->where('id', $exId)->find()->toArray();
        }
        if (isset($id)) {
            $id = Request::instance()->param('id');
            $list = $this->Closed->where('id', $id)->find()->toArray();
            if ($list['exchange']) {
                $list['exchange'] = $this->Exchange->where('id', $list['exchange'])->find()->toArray();
            }
            $list['closed_time'] = date('Y-m-d', $list['closed_time']);
            $list['start_time'] = date('Y-m-d', $list['start_time']);
            $list['end_time'] = date('Y-m-d', $list['end_time']);
        } else {
            $list = array(
                'id' => '',
                'future' => '',
                'explain' => '',
                'status' => '',
                'exchange' => '',
                'futures_name' => '',
                'closed_time' => date('Y-m-d'),
                'start_time' => date('Y-m-d'),
                'end_time' => date('Y-m-d'),
            );
            $list['exchange'] = empty($exchange) ? 0 : $exchange;
        }
        $this->assign('list', $list);
        $variety = $this->Variety->select();
        foreach ($variety as $key => &$value) {
            if ($list['future'] == $value['id']) {
                $list['futures_name'] = $value['name'];
            }
        }
        $this->assign('variety', $variety);
        return $this->fetch();
    }

    /**
     * 修改协议信息
     * @return array
     */
    public function closed_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $data['time'] = time();
            if (empty($data['status'])) {
                $r = msg_handle('请选择状态', 0);
            } elseif (empty($data['start_time'])) {
                $r = msg_handle('请选择休市开始时间', 0);
            } elseif (empty($data['end_time'])) {
                $r = msg_handle('请选择休市结束时间', 0);
            } else {
                $data['time'] = $map['time'] = time();
                if (empty($data['id'])) {
                    $data['start_time'] = strtotime($data['start_time']);
                    $data['end_time'] = strtotime($data['end_time']);
                    $list = $this->Closed->insert($data);
                } else {
                    $map['future'] = empty($data['future']) ? 0 : $data['future'];
                    $map['start_time'] = strtotime($data['start_time']);
                    $map['end_time'] = strtotime($data['end_time']);
                    $map['explain'] = $data['explain'];
                    $map['status'] = $data['status'];
                    $map['exchange'] = empty($data['exchange']) ? 0 : $data['exchange'];
                    $map['time'] = $data['time'];
                    $list = $this->Closed->where('id', $data['id'])->update($map);
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
     * 系统设置
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function basic()
    {
        $list = $this->WebsiteSet->where(1)->find();
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 修改基本设置
     * @return array
     */
    public function basic_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $data['time'] = time();
            if (empty($data['name'])) {
                $r = msg_handle('请输入网址名称', 0);
            } elseif (empty($data['company'])) {
                $r = msg_handle('请输入公司名称', 0);
            } else {
                if ($this->WebsiteSet->where('id', $data['id'])->update($data)) {
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
    public function closed_del()
    {
        if (request()->isAjax()) {
            $id = $_POST['id'];
            $list = $this->Closed->where('id', $id)->delete();
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
