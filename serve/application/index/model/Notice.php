<?php

namespace app\index\model;

use think\Model;

class Notice extends Model
{
    protected $table = 'sn_notice';

    /**
     * 查询信息
     * @return array
     */
    public function query_find()
    {
        $list = $this->where(array('status' => 1))->order(array('id desc'))->find();
        $data['content'] = $list['content'];
        return $data;
    }
}