<?php

namespace app\index\controller;

use app\index\model\ConditionList;
use app\index\model\Contract;
use app\index\model\LossList;
use app\index\model\PrepaidList;
use think\Controller;
use think\Request;

class Operation extends Controller
{
    private $LossList;
    private $Contract;
    private $PrepaidList;
    private $ConditionList;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Contract = new Contract();
        $this->LossList = new LossList();
        $this->PrepaidList = new PrepaidList();
        $this->ConditionList = new ConditionList();
    }

    /**
     * 添加止损订单
     * @param int $id
     * @param array $data
     * @return array
     */
    public function stop_loss($id = 1, $data)
    {
        $code = empty($data['code']) ? '美白银1903' : $data['code'];//期货代码
        $price = empty($data['price']) ? '15.765' : floatval($data['price']); //委托价格
        $number = empty($data['number']) ? 1 : intval($data['number']);//委托手数
        $direction = empty($data['direction']) ? 0 : $data['direction'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $classify = empty($data['classify']) ? 0 : $data['classify']; // 0:排队价 1：最新价 2：对手价 3：市价 4:快速
        $effective = empty($data['effective']) ? 0 : $data['effective'];//有效期设置 0 当日有效 1 永久有效
        $market_loss = empty($data['market_loss']) ? 0 : $data['market_loss'];//市价止盈损 0 非校验 1校验
        $time_seconds = empty($data['time_seconds']) ? 0 : intval($data['time_seconds']);//N秒后市价
        $loss_spot_price = empty($data['loss_spot_price']) ? 0 : $data['loss_spot_price'];//1按跳 ，0：按价格
        $profit_spot_price = empty($data['profit_spot_price']) ? 0 : $data['profit_spot_price'];//1按跳 ，0：按价格
        $back_loss = empty($data['back_loss']) ? 0 : intval($data['back_loss']);//回撤跳止损
        $loss = empty($data['loss']) ? 0 : $data['loss'];//止损跳/价格
        $profit = empty($data['profit']) ? 0 : $data['profit'];//止盈跳/价格
        if ($number < 1) {
            $r = msg_handle('最少委托1手', 0);
        } else if (empty($code)) {
            $r = msg_handle('请输入期货代码', 0);
        } elseif ($direction != 0 && $direction != 1) {
            $r = msg_handle('请选择委托方向', 0);
        } elseif (!in_array($classify, array(0, 1, 2, 3, 4))) {
            $r = msg_handle('请选择价位模式', 0);
        } elseif (empty($number)) {
            $r = msg_handle('请选择交易手数', 0);
        } else if ($effective != 0 && $effective != 1) {
            $r = msg_handle('有效期参数错误', 0);
        } elseif ($market_loss != 0 && $market_loss != 1) {
            $r = msg_handle('市价止盈损参数错误', 0);
        } elseif ($loss_spot_price == 0 && intval($loss) < 0) {
            $r = msg_handle('止损跳点设置错误', 0);
        } elseif ($loss_spot_price == 1 && intval($loss) < 0) {
            $r = msg_handle('止损价格设置错误', 0);
        } elseif ($profit_spot_price == 0 && intval($profit) < 0) {
            $r = msg_handle('止盈跳点设置错误', 0);
        } elseif ($profit_spot_price == 1 && intval($profit) < 0) {
            $r = msg_handle('止盈价格设置错误', 0);
        } elseif (intval($time_seconds) < 0) {
            $r = msg_handle('N秒后市价参数错误', 0);
        } elseif (intval($back_loss) < 0) {
            $r = msg_handle('回撤跳止损参数错误', 0);
        } else {
            $contract = $this->Contract->where(array('status' => 1, 'name|short|code' => $code))->find();
            if (empty($contract)) {
                $r = msg_handle('禁止添加止损单', 0);
            } else {
                $res = $this->LossList->add_log($id, $contract, $contract['futures'], $data);
                if ($res) {
                    $r = msg_handle('添加止损单成功', 1);
                } else {
                    $r = msg_handle('添加止损单失败', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 全部删除止损单
     * @param int $id
     * @return array
     */
    public function del_all_loss($id = 1)
    {
        $list = $this->LossList->where(array('uid' => $id, 'status' => array('in', array(0, 1))))->select();
        if (empty($list)) {
            $r = msg_handle('暂无止损单', 0);
        } else {
            $res = $this->LossList->all_delete_log($list);
            if ($res) {
                $r = msg_handle('全部删除止损单成功', 1);
            } else {
                $r = msg_handle('全部删除止损单失败', 0);
            }
        }
        return $r;
    }

    /**
     * 删除止损单
     * @param int $id
     * @param array $data
     * @return array
     */
    public function del_loss($id = 1, $data)
    {
        $mark = empty($data['mark']) ? 1 : $data['mark'];//唯一标示
        if (empty($mark)) {
            $r = msg_handle('请选择删除止损单', 0);
        } else {
            $list = $this->LossList->where(array('uid' => $id, 'id' => $mark, 'status' => 0))->find();
            if (empty($list)) {
                $r = msg_handle('止损单已删除或不存在', 0);
            } else {
                $res = $this->LossList->delete_log($list);
                if ($res) {
                    $r = msg_handle('删除止损单成功', 1);
                } else {
                    $r = msg_handle('删除止损单失败', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 修改工作状态
     * @param $id int 用户id
     * @param $data array 数据信息
     * @return array
     */
    public function working_loss($id, $data)
    {
        $mark = empty($data['mark']) ? 0 : $data['mark'];//订单标示
        if (empty($mark)) {
            $r = msg_handle('请选择止损单', 0);
        } else {
            $list = $this->LossList->where(array('uid' => $id, 'id' => $mark, 'status' => array('in', array(0, 1))))->find();
            if (empty($list)) {
                $r = msg_handle('选择止损单不存在', 0);
            } else {
                if ($this->LossList->working_status($list)) {
                    $r = msg_handle('', 1);
                } else {
                    $r = msg_handle('', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 暂停全部止损单
     * @param $id
     * @return array
     */
    public function suspend_all_loss($id)
    {
        if ($this->LossList->suspend_all_condition($id)) {
            $r = msg_handle('', 1);
        } else {
            $r = msg_handle('', 0);
        }
        return $r;
    }

    /**
     * 启动全部止损单
     * @param $id
     * @return array
     */
    public function startup_all_loss($id)
    {
        if ($this->LossList->startup_all_condition($id)) {
            $r = msg_handle('', 1);
        } else {
            $r = msg_handle('', 0);
        }
        return $r;
    }




    /**
     * 添加预埋单处理
     * @param int $id
     * @param array $data
     * @return array
     */
    public function prepaid_bill($id = 1, $data)
    {
        $code = empty($data['code']) ? '美白银1903' : $data['code'];//期货代码
        $price = empty($data['price']) ? '15.765' : floatval($data['price']); //委托价格
        $number = empty($data['number']) ? 1 : intval($data['number']);//委托手数
        $mold = empty($data['mold']) ? 0 : $data['mold'];//开仓类型 0：开仓 1：平仓
        $direction = empty($data['direction']) ? 0 : $data['direction'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $classify = empty($data['classify']) ? 0 : $data['classify']; // 0:排队价 1：最新价 2：对手价 3：市价 4:快速
        $market_loss = empty($data['market_loss']) ? 0 : $data['market_loss'];//市价止盈损 0 非校验 1校验
        $time_seconds = empty($data['time_seconds']) ? 0 : intval($data['time_seconds']);//N秒后市价
        $loss_spot_price = empty($data['loss_spot_price']) ? 0 : $data['loss_spot_price'];//1按跳 ，0：按价格
        $profit_spot_price = empty($data['profit_spot_price']) ? 0 : $data['profit_spot_price'];//1按跳 ，0：按价格
        $back_loss = empty($data['back_loss']) ? 0 : intval($data['back_loss']);//回撤跳止损
        $loss = empty($data['loss']) ? 0 : $data['loss'];//止损跳/价格
        $profit = empty($data['profit']) ? 0 : $data['profit'];//止盈跳/价格
        if ($number < 1) {
            $r = msg_handle('最少委托1手', 0);
        } else if (empty($code)) {
            $r = msg_handle('请输入期货代码', 0);
        } elseif ($mold != 0 && $mold != 1) {
            $r = msg_handle('请选择委托类型', 0);
        } elseif ($direction != 0 && $direction != 1) {
            $r = msg_handle('请选择委托方向', 0);
        } elseif (!in_array($classify, array(0, 1, 2, 3, 4))) {
            $r = msg_handle('请选择价位模式', 0);
        } elseif (empty($number)) {
            $r = msg_handle('请选择交易手数', 0);
        } elseif ($market_loss != 0 && $market_loss != 1) {
            $r = msg_handle('市价止盈损参数错误', 0);
        } elseif ($loss_spot_price == 0 && intval($loss) < 0) {
            $r = msg_handle('止损跳点设置错误', 0);
        } elseif ($loss_spot_price == 1 && intval($loss) < 0) {
            $r = msg_handle('止损价格设置错误', 0);
        } elseif ($profit_spot_price == 0 && intval($profit) < 0) {
            $r = msg_handle('止盈跳点设置错误', 0);
        } elseif ($profit_spot_price == 1 && intval($profit) < 0) {
            $r = msg_handle('止盈价格设置错误', 0);
        } elseif (intval($time_seconds) < 0) {
            $r = msg_handle('N秒后市价参数错误', 0);
        } elseif (intval($back_loss) < 0) {
            $r = msg_handle('回撤跳止损参数错误', 0);
        } else {
            $contract = $this->Contract->where(array('status' => 1, 'name|short|code' => $code))->find();
            if (empty($contract)) {
                $r = msg_handle('禁止添加预埋单', 0);
            } else {
                $res = $this->PrepaidList->add_log($id, $contract, $contract['futures'], $mold, $direction, $number, $price, $classify, $back_loss, $market_loss, $time_seconds, $loss_spot_price, $profit_spot_price, $loss, $profit);
                if ($res) {
                    $r = msg_handle('添加预埋单成功', 1);
                } else {
                    $r = msg_handle('添加预埋单失败', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 删除预埋单
     * @param int $id
     * @param array $data
     * @return array
     */
    public function del_prepaid_bill($id = 1, $data)
    {
        $mark = empty($data['mark']) ? 1 : $data['mark'];//唯一标示
        if (empty($mark)) {
            $r = msg_handle('请选择删除预埋单唯一标示', 0);
        } else {
            $list = $this->PrepaidList->where(array('uid' => $id, 'id' => $mark, 'status' => 0))->find();
            if (empty($list)) {
                $r = msg_handle('预埋单已删除或不存在', 0);
            } else {
                $res = $this->PrepaidList->delete_log($list);
                if ($res) {
                    $r = msg_handle('删除预埋单成功', 1);
                } else {
                    $r = msg_handle('删除预埋单失败', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 删除全部预埋单
     * @param int $id
     * @return array
     */
    public function all_prepaid_bill($id = 1)
    {
        $list = $this->PrepaidList->where(array('uid' => $id, 'status' => 0))->select();
        if (empty($list)) {
            $r = msg_handle('预埋单已删除或不存在', 0);
        } else {
            $res = $this->PrepaidList->all_delete_log($list);
            if ($res) {
                $r = msg_handle('删除预埋单成功', 1);
            } else {
                $r = msg_handle('删除预埋单失败', 0);
            }
        }
        return $r;
    }

    /**
     * 发送预埋单
     * @param $id int 用户id
     * @param $data array 数据信息
     * @return array
     */
    public function send_prepaid_bill($id, $data)
    {
        $type = empty($data['type']) ? 0 : $data['type'];//类型 0 买单 1卖单
        if ($type != 0 && $type != 1) {
            $r = msg_handle('错误操作', 0);
        } else {
            $r = msg_handle('发送成功', 1);
        }
        return $r;
    }


    /**
     * 添加条件单
     * @param int $id 用户id
     * @param array $data
     * @return array
     */
    public function condition_list($id = 1, $data)
    {
        $code = empty($data['code']) ? '美白银1903' : $data['code'];//期货代码
        $trigger_type = empty($data['trigger_type']) ? 3 : $data['trigger_type']; //0 价格触发 1 时间触发 2 价格+时间触发 3 开盘触发
        $trigger_price = empty($data['trigger_price']) ? '' : $data['trigger_price'];//触发价格
        $trigger_time = empty($data['trigger_time']) ? '' : $data['trigger_time'];//触发时间
        $trigger_mold = empty($data['trigger_mold']) ? '' : $data['trigger_mold'];//0 大于最新价 1 小于最新价
        $price = empty($data['price']) ? '15.765' : floatval($data['price']); //委托价格
        $number = empty($data['number']) ? 1 : intval($data['number']);//委托手数
        $mold = empty($data['mold']) ? 0 : $data['mold'];//开仓类型 0：开仓 1：平仓
        $direction = empty($data['direction']) ? 0 : $data['direction'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $classify = empty($data['classify']) ? 0 : $data['classify']; // 0:排队价 1：最新价 2：对手价 3：市价 4:快速
        $effective = empty($data['effective']) ? 0 : $data['effective'];//有效期设置 0 当日有效 1 永久有效
        $market_loss = empty($data['market_loss']) ? 0 : $data['market_loss'];//市价止盈损 0 非校验 1校验
        $time_seconds = empty($data['time_seconds']) ? 0 : intval($data['time_seconds']);//N秒后市价
        $loss_spot_price = empty($data['loss_spot_price']) ? 0 : $data['loss_spot_price'];//1按跳 ，0：按价格
        $profit_spot_price = empty($data['profit_spot_price']) ? 0 : $data['profit_spot_price'];//1按跳 ，0：按价格
        $back_loss = empty($data['back_loss']) ? 0 : intval($data['back_loss']);//回撤跳止损
        $loss = empty($data['loss']) ? 0 : $data['loss'];//止损跳/价格
        $profit = empty($data['profit']) ? 0 : $data['profit'];//止盈跳/价格
        if (!in_array($trigger_type, array(0, 1, 2, 3))) {
            $r = msg_handle('触发类型选择错误', 0);
        } else if ($trigger_type == 0 && empty($trigger_price)) {
            $r = msg_handle('触发价格不能为空', 0);
        } else if ($trigger_type == 1 && empty($trigger_time)) {
            $r = msg_handle('触发时间不能为空', 0);
        } else if ($trigger_type == 2 && empty($trigger_price)) {
            $r = msg_handle('触发价格不能为空', 0);
        } else if ($trigger_type == 2 && empty($trigger_time)) {
            $r = msg_handle('触发时间不能为空', 0);
        } elseif ($trigger_mold != 0 && $trigger_mold != 1) {
            $r = msg_handle('触发条件类型选择错误', 0);
        } else if ($number < 1) {
            $r = msg_handle('最少委托1手', 0);
        } else if (empty($code)) {
            $r = msg_handle('请输入期货代码', 0);
        } elseif ($mold != 0 && $mold != 1) {
            $r = msg_handle('请选择委托类型', 0);
        } elseif ($direction != 0 && $direction != 1) {
            $r = msg_handle('请选择委托方向', 0);
        } elseif (!in_array($classify, array(0, 1, 2, 3, 4))) {
            $r = msg_handle('请选择价位模式', 0);
        } elseif (empty($number)) {
            $r = msg_handle('请选择交易手数', 0);
        } else if ($effective != 0 && $effective != 1) {
            $r = msg_handle('有效期参数错误', 0);
        } elseif ($market_loss != 0 && $market_loss != 1) {
            $r = msg_handle('市价止盈损参数错误', 0);
        } elseif ($loss_spot_price == 0 && intval($loss) < 0) {
            $r = msg_handle('止损跳点设置错误', 0);
        } elseif ($loss_spot_price == 1 && intval($loss) < 0) {
            $r = msg_handle('止损价格设置错误', 0);
        } elseif ($profit_spot_price == 0 && intval($profit) < 0) {
            $r = msg_handle('止盈跳点设置错误', 0);
        } elseif ($profit_spot_price == 1 && intval($profit) < 0) {
            $r = msg_handle('止盈价格设置错误', 0);
        } elseif (intval($time_seconds) < 0) {
            $r = msg_handle('N秒后市价参数错误', 0);
        } elseif (intval($back_loss) < 0) {
            $r = msg_handle('回撤跳止损参数错误', 0);
        } else {
            $contract = $this->Contract->where(array('status' => 1, 'name|short|code' => $code))->find();
            if (empty($contract)) {
                $r = msg_handle('禁止添加条件单', 0);
            } else {
                $res = $this->ConditionList->add_log($id, $contract, $contract['futures'], $data);
                if ($res) {
                    $r = msg_handle('添加条件单成功', 1);
                } else {
                    $r = msg_handle('添加条件单失败', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 修改工作状态
     * @param $id int 用户id
     * @param $data array 数据信息
     * @return array
     */
    public function working_condition_list($id, $data)
    {
        $mark = empty($data['mark']) ? 0 : $data['mark'];//订单标示
        if (empty($mark)) {
            $r = msg_handle('请选择条件单', 0);
        } else {
            $list = $this->ConditionList->where(array('uid' => $id, 'id' => $mark, 'status' => 0))->find();
            if (empty($list)) {
                $r = msg_handle('选择条件单不存在', 0);
            } else {
                if ($this->ConditionList->working_status($list)) {
                    $r = msg_handle('', 1);
                } else {
                    $r = msg_handle('', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 删除条件单
     * @param $id int 用户id
     * @param $data array 数据信息
     * @return array
     */
    public function del_condition_list($id, $data)
    {
        $mark = empty($data['mark']) ? 0 : $data['mark'];//订单标示
        if (empty($mark)) {
            $r = msg_handle('请选择条件单', 0);
        } else {
            $list = $this->ConditionList->where(array('uid' => $id, 'id' => $mark, 'status' => 0))->find();
            if (empty($list)) {
                $r = msg_handle('选择条件单不存在', 0);
            } else {
                if ($this->ConditionList->finish_log($list, 3, '', 2)) {
                    $r = msg_handle('', 1);
                } else {
                    $r = msg_handle('', 0);
                }
            }
        }
        return $r;
    }

    /**
     * 删除全部条件单
     * @param $id
     * @return array
     */
    public function del_all_condition($id)
    {
        if ($this->ConditionList->del_all_condition($id)) {
            $r = msg_handle('', 1);
        } else {
            $r = msg_handle('', 0);
        }
        return $r;
    }

    /**
     * 暂停全部条件单
     * @param $id
     * @return array
     */
    public function suspend_all_condition($id)
    {
        if ($this->ConditionList->suspend_all_condition($id)) {
            $r = msg_handle('', 1);
        } else {
            $r = msg_handle('', 0);
        }
        return $r;
    }

    /**
     * 启动全部条件单
     * @param $id
     * @return array
     */
    public function startup_all_condition($id)
    {
        if ($this->ConditionList->startup_all_condition($id)) {
            $r = msg_handle('', 1);
        } else {
            $r = msg_handle('', 0);
        }
        return $r;
    }

    /**
     * 修改条件单
     * @param $id
     * @param $data
     * @return array
     */
    public function modify_condition_list($id, $data)
    {
        $mark = empty($data['mark']) ? 0 : $data['mark'];//订单标示
        $number = empty($data['number']) ? 1 : intval($data['number']);//委托手数
        $mold = empty($data['mold']) ? 0 : $data['mold'];//开仓类型 0：开仓 1：平仓
        $direction = empty($data['direction']) ? 0 : $data['direction'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $classify = empty($data['classify']) ? 0 : $data['classify']; // 0:排队价 1：最新价 2：对手价 3：市价 4:快速
        $effective = empty($data['effective']) ? 0 : $data['effective'];//有效期设置 0 当日有效 1 永久有效
        $market_loss = empty($data['market_loss']) ? 0 : $data['market_loss'];//市价止盈损 0 非校验 1校验
        $time_seconds = empty($data['time_seconds']) ? 0 : intval($data['time_seconds']);//N秒后市价
        $loss_spot_price = empty($data['loss_spot_price']) ? 0 : $data['loss_spot_price'];//1按跳 ，0：按价格
        $profit_spot_price = empty($data['profit_spot_price']) ? 0 : $data['profit_spot_price'];//1按跳 ，0：按价格
        $back_loss = empty($data['back_loss']) ? 0 : intval($data['back_loss']);//回撤跳止损
        $loss = empty($data['loss']) ? 0 : $data['loss'];//止损跳/价格
        $profit = empty($data['profit']) ? 0 : $data['profit'];//止盈跳/价格
        if (empty($mark)) {
            $r = msg_handle('请选择条件单', 0);
        } else {
            $list = $this->ConditionList->where(array('uid' => $id, 'id' => $mark, 'status' => 0))->find();
            if (empty($list)) {
                $r = msg_handle('选择条件单不存在', 0);
            } else {
                if ($number < 1) {
                    $r = msg_handle('最少委托1手', 0);
                } else if (empty($code)) {
                    $r = msg_handle('请输入期货代码', 0);
                } elseif ($mold != 0 && $mold != 1) {
                    $r = msg_handle('请选择委托类型', 0);
                } elseif ($direction != 0 && $direction != 1) {
                    $r = msg_handle('请选择委托方向', 0);
                } elseif (!in_array($classify, array(0, 1, 2, 3, 4))) {
                    $r = msg_handle('请选择价位模式', 0);
                } elseif (empty($number)) {
                    $r = msg_handle('请选择交易手数', 0);
                } else if ($effective != 0 && $effective != 1) {
                    $r = msg_handle('有效期参数错误', 0);
                } elseif ($market_loss != 0 && $market_loss != 1) {
                    $r = msg_handle('市价止盈损参数错误', 0);
                } elseif ($loss_spot_price == 0 && intval($loss) < 0) {
                    $r = msg_handle('止损跳点设置错误', 0);
                } elseif ($loss_spot_price == 1 && intval($loss) < 0) {
                    $r = msg_handle('止损价格设置错误', 0);
                } elseif ($profit_spot_price == 0 && intval($profit) < 0) {
                    $r = msg_handle('止盈跳点设置错误', 0);
                } elseif ($profit_spot_price == 1 && intval($profit) < 0) {
                    $r = msg_handle('止盈价格设置错误', 0);
                } elseif (intval($time_seconds) < 0) {
                    $r = msg_handle('N秒后市价参数错误', 0);
                } elseif (intval($back_loss) < 0) {
                    $r = msg_handle('回撤跳止损参数错误', 0);
                } else {
                    $contract = $this->Contract->where(array('status' => 1, 'name|short|code' => $code))->find();
                    if (empty($contract)) {
                        $r = msg_handle('禁止添加条件单', 0);
                    } else {
                        $res = $this->ConditionList->modify_log($list, $data);
                        if ($res) {
                            $r = msg_handle('修改条件单成功', 1);
                        } else {
                            $r = msg_handle('修改条件单失败', 0);
                        }
                    }
                }
            }
        }
        return $r;
    }


}


















