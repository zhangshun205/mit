<?php

namespace app\common\model;

use think\Model;

/**
 * 委托预埋单
 * Class PrepaidList
 * @package app\common\model
 */
class PrepaidList extends Model
{
    protected $table = 'sn_prepaid_list';

    public function user()
    {
        return $this->belongsTo('User', 'uid', 'id')->field('phone,name,real_name,number');
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
        $arr = $this->where($map)->relation('user,future')->order('id', 'asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['mold'] = $value['mold'] == 0 ? '开仓' : '平仓';
            $value['direction'] = $value['direction'] == 0 ? '买' : '卖';
            $value['market_loss'] = $value['market_loss'] == 0 ? '非校验' : '校验';
            $value['loss_spot_price'] = $value['loss_spot_price'] == 0 ? '按照点位' : '按照价格';//止损设置 0：按照点位，1。按照价格
            $value['profit_spot_price'] = $value['profit_spot_price'] == 0 ? '按照点位' : '按照价格';//止盈设置 0：按照点位，1。按照价格
            $value['status'] = $this->entrust_status($value['status']);//交易状态
            $value['time'] = detail_time($value['time']);
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        $sum['number_sum'] = $this->where($map)->sum('number');//总数量
        $data['sum'] = $sum;
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

    /**
     * 状态  0 进行中 1 已完成 2 已删除
     * @param $status
     * @return string
     */
    function entrust_status($status)
    {
        switch ($status) {
            case 0:
                $status = '进行中';
                break;
            case 1:
                $status = '已完成';
                break;
            case 2:
                $status = '已删除';
                break;
            default:
                $status = '错单';
                break;
        }
        return $status;
    }
}