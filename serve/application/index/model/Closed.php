<?php

namespace app\index\model;

use think\Model;

class Closed extends Model
{
    protected $table = 'sn_closed';

    public function query_find($future)
    {
        $start = day_time();
        $end = $start + 86400;
        $map['future'] = $future;
        $map['closed_time'] = array(array('egt', $start), array('elt', $end));
        return $this->where($map)->find();
    }
}