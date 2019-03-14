<?php

namespace app\common\model;

use think\Model;

class ExchangeRate extends Model
{
    protected $table = 'sn_exchange_rate';

    /**
     * 交易所汇率信息
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

        $arr = $this->where($map)->order('time desc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['status_text'] = $value['status'] == 1 ? '启用' : '禁用';
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }


}