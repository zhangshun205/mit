<?php

namespace app\common\model;

use think\Model;

class Entrust extends Model
{
    protected $table = 'sn_entrust';

    public function user()
    {
        return $this->belongsTo('User', 'uid', 'id')->field('phone,name,real_name,number');
    }

    public function agent()
    {
        return $this->belongsTo('Agent', 'agent', 'id');
    }

    public function future()
    {
        return $this->belongsTo('Trade', 'future', 'id');
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
        $arr = $this->where($map)->relation('user,future,agent')->order('id', 'asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['mold'] = $value['mold'] == 0 ? '开仓' : '平仓';
            $value['direction'] = $value['direction'] == 0 ? '买' : '卖';
            $value['price_type'] = $this->price_type($value['price_type']);//价格类型
            $value['trade_type'] = $this->trade_type($value['trade_type']);//交易类型
            $value['status'] = $this->entrust_status($value['status']);//交易状态
            $value['time'] = detail_time($value['time']);
            $value['finish_time'] = detail_time($value['finish_time']);
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);

        $sum['number_sum'] = $this->where($map)->sum('number');//总数量
        $sum['surplus_sum'] = $this->where($map)->sum('surplus');//剩余数量
        $sum['finish_sum'] = $this->where($map)->sum('finish');//完成数量
        $sum['cancel_sum'] = $this->where($map)->sum('cancel');//取消数量

        $sum['fee_total_sum'] = $this->where($map)->sum('finish');//总手续费
        $sum['frozen_fee_sum'] = $this->where($map)->sum('frozen_fee');//冻结手续费
        $sum['bond_total_sum'] = $this->where($map)->sum('frozen_fee');//总保证金
        $sum['frozen_bond_sum'] = $this->where($map)->sum('frozen_bond');//冻结保证金

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