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

    public function exchange()
    {
        return $this->belongsTo('Exchange', 'exchange', 'id');
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
        $arr = $this->where($map)->relation('futures,exchange')->order('time desc')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            $value['start_time'] = detail_time($value['start_time']);
            $value['end_time'] = detail_time($value['end_time']);
            $value['status_text'] = $value['status'] == 1 ? "开启" : "关闭";
            $value['exchange_text'] = empty($value['exchange'])?'/':$value['exchange']['name'];
            $value['code'] = empty($value['future'])?'/':$value['futures']['code'];
            $value['name'] = empty($value['future'])?'/':$value['futures']['name'];
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

}
