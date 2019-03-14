<?php

namespace app\common\model;

use think\Model;

class News extends Model
{
    protected $table = 'sn_news';

    /**
     * 状态 0 未展示 1 展示 2删除
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
        $arr = $this->where($map)->order('time desc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            if ($value['status'] == 1) {
                $value['status_text'] = "展示";
            } elseif ($value['status'] == 0) {
                $value['status_text'] = "未展示";
            } else {
                $value['status_text'] = "删除";
            }
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

}
