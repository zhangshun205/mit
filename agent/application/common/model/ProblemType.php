<?php

namespace app\common\model;

use think\Model;

class ProblemType extends Model
{
    protected $table = 'sn_problem_type';

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
        $arr = $this->where($map)->order('id', 'asc')->page($page, $size)->select();
        foreach ($arr as $key => $value) {
            $arr[$key]['time'] = detail_time($value['time']);
            if ($value['status'] == 1) {
                $value['status'] = "正常";
            } else {
                $value['status'] = "禁用";
            }
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

}
