<?php

namespace app\index\model;

use think\Model;

class News extends Model
{
    protected $table = 'sn_news';

    /**
     * 查询信息
     * @return array
     */
    public function query_log()
    {
        $list = $this->where(array('status' => 1))->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['title'] = $value['title'];
            $data[$key]['content'] = $value['content'];
            $data[$key]['time'] = detail_time($value['time']);
        }
        return $data;
    }
}