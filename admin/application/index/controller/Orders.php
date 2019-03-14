<?php

namespace app\index\controller;

use think\Request;
use app\common\model\User;
use app\common\model\Entrust;
use app\common\model\Deal;
use app\common\model\Depot;
use app\common\model\PrepaidList;

class Orders extends Common
{
    protected $User;
    protected $Deal;
    protected $Depot;
    protected $Enturst;
    protected $PrepaidList;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
        $this->Enturst = new Entrust();
        $this->Deal = new Deal();
        $this->Depot = new Depot();
        $this->PrepaidList = new PrepaidList();
    }

    public function test()
    {
        $code = input('code');
        return $code;
    }

    /**
     * 委托记录
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function entrust()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $user = $this->User->where(array("phone|real_name|number" => ['like', $name]))->find();
            empty($user) ?$map['name|order'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $map['status'] = ['neq', 3];
        $list = $this->Enturst->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 期货成交记录
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function deal()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $user = $this->User->where(array("phone|real_name|number" => ['like', $name]))->find();
            empty($user) ? $map['name|order'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Deal->query_log($map, $current_page, $this->num,1);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 持仓记录
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function depot()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $user = $this->User->where(array("phone|real_name|number" => ['like', $name]))->find();
            empty($user) ? $map['name'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Depot->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        return json($list['data']);/**/
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 平仓记录
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function close()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $user = $this->User->where(array("phone|real_name|number" => ['like', $name]))->find();
            empty($user) ? $map['name|order'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $map['mold'] = 0;
        $map['status'] = 2;
        $list = $this->Deal->query_log($map, $current_page, $this->num,2);
//        return json($list);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        return json($list['data']);/**/
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 委托预埋单
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function entrust_preset()
    {
        $map = array();
        $name = input('get.name/s');
        if ($name) {
            $user = $this->User->where(array("phone|real_name|number" => ['like', $name]))->find();
            empty($user) ? $map['name'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->PrepaidList->query_log($map, $current_page, $this->num);
//        return json($list);/**/
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 定时请求列表数据
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function depot_list()
    {
        $map = array();
        $name = input('get.name/s');
        if ($name) {
            $user = $this->User->where(array("phone|real_name|number" => ['like', $name]))->find();
            empty($user) ? $map['name'] = ['like', "%$name%"] : $map['uid'] = $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Depot->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $list;
    }


}