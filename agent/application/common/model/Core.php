<?php

namespace app\common\model;

use think\Model;

class Core extends Model
{
    protected $table = 'sn_core_set';

    /**查询等级信息
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
        $arr = $this->where($map)->order('id asc')->page($page, $size)->select();
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }
}
