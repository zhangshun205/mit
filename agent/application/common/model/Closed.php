<?php

namespace app\common\model;

use think\Model;

class Closed extends Model
{
    protected $table = 'sn_closed';

    public function futures()
    {
        return $this->belongsTo('Variety', 'future', 'id');
    }

    /**
     * 查询列表信息
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
        $arr = $this->where($map)->relation('futures')->order('time desc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['status_text'] = $value['status'] == 1 ? "开启" : "关闭";
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

}
