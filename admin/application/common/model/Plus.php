<?php

namespace app\common\model;

use think\Model;

class Plus extends Model
{
    protected $table = 'sn_plus';

    public function user()
    {
        return $this->belongsTo('User', 'uid')->field('id,name,phone,real_name');
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
        $arr = $this->where($map)->order('time desc, id  asc')->relation('user')->page($page, $size)->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['time'] = detail_time($value['time']);
            if ($value['status'] == 1) {
                $value['status_text'] = "充值成功";
            } else {
                $value['status_text'] = "充值失败";
            }
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['sum_number'] = $this->where($map)->sum('number');
        $data['sum_total'] = $this->where($map)->sum('total');
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

}
