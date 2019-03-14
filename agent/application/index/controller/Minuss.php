<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Minus;

class Minuss extends Common
{
    protected $Minus;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Minus = new Minus();
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
        $list = $this->Minus->query_log($map, $current_page, $this->num);
        $number_sum = $this->Minus->where($map)->sum('number');//提现申请总和
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('number_sum', $number_sum);
        $this->assign('list', $list['data']);
        $this->assign('a', input('a'));
        $this->assign('b', input('b'));
        return $this->fetch();
    }
}
