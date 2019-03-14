<?php

namespace app\common\model;

use think\Model;

class Problem extends Model
{
    protected $table = 'sn_problem';

    public function types()
    {
        return $this->belongsTo('ProblemType', 'type');
    }

    public function user()
    {
        return $this->belongsTo('User', 'uid');
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
        // 这个表示拿到的数据库里面的内容
        $arr = $this->where($map)->order('time desc, id  asc')->relation('types,user')->page($page, $size)->select()->toArray();
        foreach ($arr as $key =>&$value) {
            $value['time'] = detail_time($value['time']);
            $value['reply_time'] = detail_time($value['reply_time']);
            if ($value['status'] == 1) {
                $value['status_text'] = "已回复";
            } else {
                $value['status_text'] = "未回复";
            }
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

}
