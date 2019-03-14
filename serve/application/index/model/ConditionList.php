<?php

namespace app\index\model;

use think\Model;

class ConditionList extends Model
{
    protected $table = 'sn_condition_list';

    public function futures()
    {
        return $this->belongsTo('Futures', 'future', 'id');
    }

    /**
     * 添加记录
     * @param $id int 用户id
     * @param $stock array 股票信息
     * @param $future int 品种id
     * @param $data array 数据信息
     * @return int|string
     */
    public function add_log($id, $stock, $future, $data)
    {
        $map['uid'] = $id;
        $map['short'] = $stock['short'];
        $map['code'] = $stock['code'];
        $map['name'] = $stock['name'];
        $map['order'] = rand_order($id);
        $map['future'] = $future;
        $map['trigger_type'] = empty($data['trigger_type']) ? "" : $data['trigger_type']; //0 价格触发 1 时间触发 2 价格+时间触发 3 开盘触发
        $map['trigger_price'] = empty($data['trigger_price']) ? "" : $data['trigger_price']; //触发价格
        $map['trigger_time'] = empty($data['trigger_time']) ? "" : $data['trigger_time']; //触发时间
        $map['trigger_mold'] = empty($data['trigger_mold']) ? "" : $data['trigger_mold'];//0 大于最新价 1 小于最新价
        $map['price'] = empty($data['price']) ? "" : $data['price'];//委托价格
        $map['number'] = empty($data['number']) ? "" : $data['number'];//委托手数
        $map['mold'] = empty($data['mold']) ? "" : $data['mold']; //开仓类型 0：开仓 1：平仓
        $map['direction'] = empty($data['direction']) ? "" : $data['direction'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $map['classify'] = empty($data['classify']) ? "" : $data['classify'];// 0:排队价 1：最新价 2：对手价 3：市价 4:快速
        $map['effective'] = empty($data['effective']) ? "" : $data['effective'];//有效期设置 0 当日有效 1 永久有效
        $map['market_loss'] = empty($data['market_loss']) ? "" : $data['market_loss'];//市价止盈损 0 非校验 1校验
        $map['time_seconds'] = empty($data['time_seconds']) ? "" : $data['time_seconds'];//N秒后市价
        $map['loss_spot_price'] = empty($data['loss_spot_price']) ? "" : $data['loss_spot_price'];//1按跳 ，0：按价格
        $map['profit_spot_price'] = empty($data['profit_spot_price']) ? "" : $data['profit_spot_price'];//1按跳 ，0：按价格
        $map['back_loss'] = empty($data['back_loss']) ? "" : $data['back_loss'];//回撤跳止损
        $map['loss'] = empty($data['loss']) ? "" : $data['loss'];//止损跳/价格
        $map['profit'] = empty($data['profit']) ? "" : $data['profit'];//止盈跳/价格
        $map['status'] = 0; //0 未完成 1：已触发 2:删除
//        0 运行 1 暂停 2 删除  3 已完成
        $map['time'] = time();
        return $this->insert($map);
    }

    /**
     * 查询记录
     * @param $map array 查询条件
     * @return mixed
     */
    public function query_log($map)
    {
        $list = $this->where($map)->relation(array('futures'))->order('time desc')->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['mark'] = $value['id'];
            $data[$key]['working'] = $value['working'] ? '运行' : '暂定';
            $data[$key]['contract'] = $value['name'];
            $data[$key]['short'] = $value['short'];
            $data[$key]['direction'] = $value['direction'] ? '卖出' : '买入';
            $data[$key]['mold'] = $value['mold'] ? '平仓' : '开仓';
            if ($value['trigger_type'] == 1 || $value['trigger_type'] == 2) {
                $data[$key]['trigger_time'] = $value['trigger_time'];
            } else {
                $data[$key]['trigger_time'] = '---';
            }
            if ($value['trigger_type'] == 0 || $value['trigger_type'] == 2) {
                $symbol = $value['trigger_mold'] ? '<=' : '>=';
                $data[$key]['trigger_price'] = '价格' . $symbol . priceFill($value['trigger_price'], $value['futures']['price']);
            } else {
                $data[$key]['trigger_price'] = '---';
            }
            $data[$key]['trigger_type'] = $this->trigger_type($value['trigger_type']);
            $data[$key]['number'] = $value['number'];
            $data[$key]['back_loss'] = $value['back_loss'] ? $value['back_loss'] : '---';
            $data[$key]['price'] = $value['price'] ? priceFill($value['price'], $value['futures']['price']) : $this->price_type($value['classify']);
            $loss_name = $value['loss_spot_price'] ? '亏损' : '止损价';
            $profit_name = $value['profit_spot_price'] ? '止盈' : '止盈价';
            $loss = $value['loss_spot_price'] ? intval($value['loss']) . '跳' : priceFill($value['loss'], $value['futures']['price']);
            $profit = $value['profit_spot_price'] ? intval($value['profit']) . '跳' : priceFill($value['profit'], $value['futures']['price']);
            if (floatval($value['loss'])) {
                $data[$key]['loss'] = $loss_name . ':' . $loss;
            } else {
                $data[$key]['loss'] = '---';
            }
            if (floatval($value['profit'])) {
                $data[$key]['profit'] = $profit_name . ':' . $profit;
            } else {
                $data[$key]['profit'] = '---';
            }
            $data[$key]['market_loss'] = $value['market_loss'];
            $data[$key]['time_seconds'] = $value['time_seconds'];
            $data[$key]['time'] = detail_time($value['time']);
            $data[$key]['effective'] = $value['effective'] ? '永久有效' : '当日有效';
            $data[$key]['finish_time'] = $value['finish_time'] ? detail_time($value['finish_time']) : '';
            $data[$key]['finish_type'] = $this->finish_type($value['finish_type']);
            $data[$key]['error_info'] = $value['error_info'];
            $data[$key]['order'] = $value['order'];
        }
        return $data;
    }

    /**
     * 修改记录
     * @param $list array  条件单
     * @param $data array  数据
     * @return int|string
     */
    public function modify_log($list, $data)
    {
        $map['id'] = $list['id'];
        $map['price'] = empty($data['price']) ? "" : $data['price'];//委托价格
        $map['number'] = empty($data['number']) ? "" : $data['number'];//委托手数
        $map['mold'] = empty($data['mold']) ? "" : $data['mold']; //开仓类型 0：开仓 1：平仓
        $map['direction'] = empty($data['direction']) ? "" : $data['direction'];//开仓类型 0：买涨(买入) 1：买跌(卖出)
        $map['classify'] = empty($data['classify']) ? "" : $data['classify'];// 0:排队价 1：最新价 2：对手价 3：市价 4:快速
        $map['effective'] = empty($data['effective']) ? "" : $data['effective'];//有效期设置 0 当日有效 1 永久有效
        $map['market_loss'] = empty($data['market_loss']) ? "" : $data['market_loss'];//市价止盈损 0 非校验 1校验
        $map['time_seconds'] = empty($data['time_seconds']) ? "" : $data['time_seconds'];//N秒后市价
        $map['loss_spot_price'] = empty($data['loss_spot_price']) ? "" : $data['loss_spot_price'];//1按跳 ，0：按价格
        $map['profit_spot_price'] = empty($data['profit_spot_price']) ? "" : $data['profit_spot_price'];//1按跳 ，0：按价格
        $map['back_loss'] = empty($data['back_loss']) ? "" : $data['back_loss'];//回撤跳止损
        $map['loss'] = empty($data['loss']) ? "" : $data['loss'];//止损跳/价格
        $map['profit'] = empty($data['profit']) ? "" : $data['profit'];//止盈跳/价格
        $map['modify_time'] = time();
        return $this->update($map);
    }

    /**
     * 修改工作状态
     * @param $list
     * @return mixed
     */
    public function working_status($list)
    {
        $map['id'] = $list['id'];
        $map['working'] = $list['working'] ? 0 : 1;
        $map['modify_time'] = time();
        return $this->update($map);
    }

    /**
     * 结束订单
     * @param $list int 用户信息
     * @param $finish_type int 完成类型
     * @param $error_info string 错误信息
     * @param $status int   1：已触发 2:删除
     * @return mixed
     */
    public function finish_log($list, $finish_type, $error_info, $status)
    {
        $map['id'] = $list['id'];
        $map['finish_type'] = $finish_type;
        $map['status'] = $status;
        $map['error_info'] = $error_info;
        $map['modify_time'] = time();
        $map['finish_time'] = time();
        return $this->update($map);
    }

    /**
     * 删除全部条件单
     * @param $id int 用户id
     * @return array|false|int
     */
    public function del_all_condition($id)
    {
        $list = $this->where(array('uid' => $id, 'status' => 0))->select();
        $array = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['finish_type'] = 3;
            $map['status'] = 2;
            $map['error_info'] = '';
            $map['modify_time'] = time();
            $map['finish_time'] = time();
            array_push($array, $map);
        }
        if ($array) {
            return $this->saveAll($array);
        } else {
            return 0;
        }
    }

    /**
     * 暂停全部工作订单
     * @param $id int 用户id
     * @return array|false|int
     */
    public function suspend_all_condition($id)
    {
        $list = $this->where(array('uid' => $id, 'status' => 0, 'working' => 1))->select();
        $array = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['working'] = 0;
            $map['modify_time'] = time();
            array_push($array, $map);
        }
        if ($array) {
            return $this->saveAll($array);
        } else {
            return 0;
        }
    }

    /**
     * 启动全部工作订单
     * @param $id int 用户id
     * @return array|false|int
     */
    public function startup_all_condition($id)
    {
        $list = $this->where(array('uid' => $id, 'status' => 0, 'working' => 0))->select();
        $array = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['working'] = 1;
            $map['modify_time'] = time();
            array_push($array, $map);
        }
        if ($array) {
            return $this->saveAll($array);
        } else {
            return 0;
        }
    }

    /**
     * 完成类型
     * @param $type
     * @return string
     */
    private function finish_type($type)
    {
        switch ($type) {
            case 1:
                $name = '已触发';
                break;
            case 2:
                $name = '立即下单';
                break;
            case 3:
                $name = '用户删除';
                break;
            case 4:
                $name = '风控员删除';
                break;
            case 5:
                $name = '结算';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }

    /**
     * 触发类型
     * @param $type
     * @return string
     */
    private function trigger_type($type)
    {
        switch ($type) {
            case 0:
                $name = '价格';
                break;
            case 1:
                $name = '时间';
                break;
            case 2:
                $name = '价格+时间';
                break;
            case 3:
                $name = '开盘';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }

    /**
     * 价格类型
     * @param $type
     * @return string
     */
    private function price_type($type)
    {
        switch ($type) {
            case 0:
                $name = '排队价';
                break;
            case 1:
                $name = '最新价';
                break;
            case 2:
                $name = '对手价';
                break;
            case 3:
                $name = '市价';
                break;
            default:
                $name = '限价';
                break;
        }
        return $name;
    }
}