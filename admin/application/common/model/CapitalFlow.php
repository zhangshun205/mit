<?php

namespace app\common\model;

use think\Model;

class CapitalFlow extends Model
{
    protected $User;

    public function user()
    {
        return $this->belongsTo('User', 'uid');
    }

    public function agents()
    {
        return $this->belongsTo('Agent', 'agent', 'id');
    }

    public function query_log($map, $page, $size)
    {
        $arr = $this->where($map)->relation('user,agents')->order('id desc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['type'] = $this->type_handling($value['type']);
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        $list['sum_number'] = $this->where($map)->sum('number');
        $list['sum_balance'] = $this->where($map)->sum('balance');
        return $list;
    }

    /**
     * 类型判断
     * @param $type
     * @return string
     */
    public function type_handling($type)
    {
        switch ($type) {
            case 1:
                $name = '申请充值';
                break;
            case 2:
                $name = '申请提现';
                break;
            case 3:
                $name = '开仓委托冻结保证金';
                break;
            case 4:
                $name = '开仓委托冻结手续费';
                break;
            case 5:
                $name = '取消开仓委托解冻保证金';
                break;
            case 6:
                $name = '取消开仓委托解冻手续费';
                break;
            case 7:
                $name = '开仓委托完成解冻保证金';
                break;
            case 8:
                $name = '开仓委托完成解冻手续费';
                break;
            case 9:
                $name = '开仓成交冻结保证金';
                break;
            case 10:
                $name = '开仓成交收取费用';
                break;
            case 11:
                $name = '平仓成交解冻保证金';
                break;
            case 12:
                $name = '平仓成交盈利';
                break;
            case 13:
                $name = '平仓成交收取费用';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }
}