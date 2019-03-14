<?php

namespace app\common\model;

use think\Model;

class Variety extends Model
{
    protected $table = 'sn_futures';

    public function exchange()
    {
        return $this->hasOne('Exchange', 'id', 'bourse');
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
        $arr = $this->where($map)->order('id', 'asc')->relation('exchange')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['status_text'] = $value['status'] == 1 ? '正常' : '禁用';
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }
}