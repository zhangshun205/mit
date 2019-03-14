<?php

namespace app\common\model;

use think\Model;

class Depot extends Model
{
    protected $table = 'sn_depot';

    public function user()
    {
        return $this->belongsTo('User', 'uid', 'id')->field('phone,name,real_name,number');
    }

    public function agent()
    {
        return $this->belongsTo('Agent', 'agent', 'id');
    }

    /**
     * @param $map
     * @param $page
     * @param $size
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function query_log($map, $page, $size)
    {
        $arr = $this->where($map)->relation('user,agent')->order('time desc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['direction'] = $value['direction'] == 0 ? '买' : '卖';
            $value['time'] = detail_time($value['time']);
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $sum['number_sum'] = $this->where($map)->sum('number');//总数量
        $sum['surplus_sum'] = $this->where($map)->sum('surplus');//剩余数量
        $sum['finish_sum'] = $this->where($map)->sum('finish');//完成数量
        $sum['frozen_sum'] = $this->where($map)->sum('frozen');//冻结数量
        $sum['profit_loss_sum'] = $this->where($map)->sum('profit_loss');//持仓盈亏统计
        $data['sum'] = $sum;
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

    /**
     * 价格类型：0 限价 1：最新价 2：对手价 3：挂单价 4:快速价
     * @param $type
     * @return string
     */
    function price_type($type)
    {
        switch ($type) {
            case 0:
                $type = '限价';
                break;
            case 1:
                $type = '最新价';
                break;
            case 2:
                $type = '对手价';
                break;
            case 3:
                $type = '挂单价';
                break;
            case 4:
                $type = '快速价';
                break;
            default:
                $type = '其他';
                break;
        }
        return $type;
    }

    /**
     * 交易类型 0:开仓买入 1：开仓卖出 2：平仓卖出 3 平仓买入
     * @param $type
     * @return string
     */
    function trade_type($type)
    {
        switch ($type) {
            case 0:
                $type = '开仓买入';
                break;
            case 1:
                $type = '开仓卖出';
                break;
            case 2:
                $type = '平仓卖出';
                break;
            case 3:
                $type = '平仓买入';
                break;
            default:
                $type = '其他';
                break;
        }
        return $type;
    }

    /**
     * 状态  0 未完成 1部成，2已完成, 3:已撤销，4：部撤 ，其他：错单
     * @param $status
     * @return string
     */
    function entrust_status($status)
    {
        switch ($status) {
            case 0:
                $status = '未完成';
                break;
            case 1:
                $status = '部分完成';
                break;
            case 2:
                $status = '已完成';
                break;
            case 3:
                $status = '已撤销';
                break;
            case 4:
                $status = '部分撤销';
                break;
            default:
                $status = '错单';
                break;
        }
        return $status;
    }
}