<?php

namespace app\common\model;

use think\Model;

class Trade extends Model
{
    protected $table = 'sn_futures';

    public function currencys()
    {
        return $this->hasOne('ExchangeRate', 'id', 'currency');
    }

    /**
     * 查询所有品种信息
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
        $arr = $this->where($map)->relation('currencys')->order('id', 'asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['status_text'] = $this->status_text($value['status']);
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

    /**
     * 交易状态 0 不可交易 1 可交易 2已删除
     * @param $status
     * @return string
     */
    public function status_text($status)
    {
        switch ($status) {
            case 0:
                $status = '不可交易';
                break;
            case 1:
                $status = '可交易';
                break;
            case 2:
                $status = '已删除';
                break;
            default:
                $status = '已删除';
                break;
        }
        return $status;
    }
}