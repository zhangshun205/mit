<?php

namespace app\index\controller;

use app\index\model\ConditionList;
use app\index\model\Deal;
use app\index\model\Depot;
use app\index\model\Entrust;
use app\index\model\LossList;
use app\index\model\PrepaidList;
use think\Controller;
use think\Request;

class Record extends Controller
{
    private $Entrust;
    private $Deal;
    private $Depot;
    private $LossList;
    private $PrepaidList;
    private $ConditionList;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Entrust = new Entrust();
        $this->Deal = new Deal();
        $this->Depot = new Depot();
        $this->LossList = new LossList();
        $this->PrepaidList = new PrepaidList();
        $this->ConditionList = new ConditionList();
    }

    /**
     * 未完成委托记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return array|\think\response\Json
     */
    public function entrust_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $map['status'] = 0;
        $list = $this->Entrust->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 当日委托记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return array|\think\response\Json
     */
    public function day_entrust_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $map['time'] = array('gt', day_time());
        $list = $this->Entrust->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 历史委托记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return array|\think\response\Json
     */
    public function history_entrust_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $map['time'] = array('lt', day_time());
        $list = $this->Entrust->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 当日成交成交记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return \think\response\Json
     */
    public function day_deal_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $map['time'] = array('gt', day_time());
        $list = $this->Deal->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 历史成交成交记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return \think\response\Json
     */
    public function history_deal_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $map['time'] = array('lt',day_time());
        $list = $this->Deal->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 全部成交成交记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return \think\response\Json
     */
    public function deal_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $list = $this->Deal->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 持仓记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return array|\think\response\Json
     */
    public function depot_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $list = $this->Depot->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 预埋单记录
     * @param $id int 用户id
     * @param $data array 查询条件
     * @return array
     */
    public function prepaid_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $list = $this->PrepaidList->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 条件单查询
     * @param int $id
     * @param array $data
     * @param array $user
     * @return array
     */
    public function condition_log($id = 1, $user = array(), $data = array())
    {
        $status = empty($data['status']) ? 0 : $data['status'];
        $map['uid'] = $id;
        $map['status'] = $status;
        $list = $this->ConditionList->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $user['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }

    /**
     * 止损单查询
     * @param int $id
     * @param array $data
     * @return array
     */
    public function loss_log($id = 1, $data = array())
    {
        $map['uid'] = $id;
        $list = $this->LossList->query_log($map);
        foreach ($list as $key => $value) {
            $value['trade_name'] = $data['number'];
            $list[$key] = $value;
        }
        return msg_handle('', 1, $list);
    }
}