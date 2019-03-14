<?php

namespace app\index\model;

use think\Model;

class CoreSet extends Model
{
    protected $table = 'sn_core_set';

    public function query_find()
    {
        return $this->where(array('id' => 1))->find();
    }
}