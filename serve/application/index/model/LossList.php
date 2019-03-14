<?php

namespace app\index\model;

use think\Model;

class LossList extends Model
{
    protected $table = 'sn_loss_list';

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
        $map['price'] = empty($data['price']) ? "" : $data['price'];//委托价格
        $map['number'] = empty($data['number']) ? "" : $data['number'];//委托手数
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
        $map['status'] = 0; //0 运行 1：暂停 2：已触发 3:已删除
        $map['time'] = time();
        return $this->insert($map);
    }

    /**
     * 全部删除
     * @param $list
     * @return array|false|int
     */
    public function all_delete_log($list)
    {
        $data = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['status'] = 3;
            $map['finish_time'] = time();
            $map['modify_time'] = time();
            $map['finish_type'] = 4;
            array_push($data, $map);
        }
        if ($data) {
            return $this->saveAll($data);
        } else {
            return 1;
        }
    }

    public function delete_log($list)
    {
        $map['id'] = $list['id'];
        $map['status'] = 3;
        $map['finish_time'] = time();
        $map['modify_time'] = time();
        $map['finish_type'] = 4;
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
        $map['status'] = $list['status'] ? 0 : 1;
        $map['modify_time'] = time();
        return $this->update($map);
    }

    /**
     * 暂停全部工作订单
     * @param $id int 用户id
     * @return array|false|int
     */
    public function suspend_all_condition($id)
    {
        $list = $this->where(array('uid' => $id, 'status' => array('in', array(0, 1))))->select();
        $array = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['status'] = 1;
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
        $list = $this->where(array('uid' => $id, 'status' => array('in', array(0, 1))))->select();
        $array = array();
        foreach ($list as $key => $value) {
            $map['id'] = $value['id'];
            $map['status'] = 0;
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
     * 查询记录
     * @param $map array
     * @return array
     */
    public function query_log($map)
    {
        $list = $this->where($map)->relation(array('futures'))->order('time desc')->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['mark'] = $value['id'];
            $data[$key]['time'] = detail_time($value['time']);
            $data[$key]['status_name'] = $this->status_name($value['status']);
            $data[$key]['contract'] = $value['name'];
            $data[$key]['short'] = $value['short'];
            $data[$key]['number'] = $value['number'];
            $data[$key]['back_loss'] = $value['back_loss'] ? $value['back_loss'] : '---';
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
            $data[$key]['direction'] = $value['direction'] ? '卖出' : '买入';
            $data[$key]['market_loss'] = $value['market_loss'];
            $data[$key]['time_seconds'] = $value['time_seconds'];
            $data[$key]['effective'] = $value['effective'] ? '永久有效' : '当日有效';
            $data[$key]['modify_time'] = detail_time($value['modify_time']);
            $data[$key]['finish_time'] = $value['finish_time'] ? detail_time($value['finish_time']) : '';
            $data[$key]['finish_type'] = $this->finish_type($value['finish_type']);
            $data[$key]['error_info'] = $value['error_info'];
            $data[$key]['order'] = $value['order'];
            $data[$key]['is_finish'] = $value['finish_time'] ? 1 : 0;
        }
        return $data;
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
                $name = '止盈触发';
                break;
            case 2:
                $name = '止损触发';
                break;
            case 3:
                $name = '回撤止损';
                break;
            case 4:
                $name = '客户删除';
                break;
            case 5:
                $name = '无持仓';
                break;
            case 6:
                $name = '管理端删除';
                break;
            case 7:
                $name = '结算';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }

    /**
     *
     * @param $status
     * @return string
     */
    private function status_name($status)
    {
        switch ($status) {
            case 0:
                $name = '运行';
                break;
            case 1:
                $name = '暂停';
                break;
            case 2:
                $name = '已触发';
                break;
            case 3:
                $name = '已删除';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }
}