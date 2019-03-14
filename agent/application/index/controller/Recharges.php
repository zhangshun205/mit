<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Plus;
use app\common\model\User;
use app\common\model\Recharge;

class Recharges extends Common
{
    protected $Plus;
    private $Recharge;
    protected $User;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Plus = new Plus();
        $this->User = new User();
        $this->Recharge = new Recharge();
    }

    /**
     * 系统充值资金
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function SystemRecharge()
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
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $map = array();
        $name = input('get.name/s');
        if ($name) {
            $user = $this->User->where(array("phone|name|real_name" => $name))->find();
            if ($user) {
                $map['uid'] = $user["id"];
            } else {
                $map['uid'] = 0;
            }
        }
        $map['agent']=session('admin_id');
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
        $this->assign('a', input('a'));
        $this->assign('b', input('b'));
        return $this->fetch();
    }
}
