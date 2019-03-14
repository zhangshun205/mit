<?php

namespace app\common\model;

use think\Model;

class Contract extends Model
{
    protected $table = 'sn_contract';

    /**
     * 关联交易所信息
     * @return \think\model\relation\HasOne
     */
    public function exchange()
    {
        return $this->hasOne('Exchange', 'id', 'bourse');
    }

    /**
     * 关联合约信息
     * @return \think\model\relation\HasOne
     */
    public function futures()
    {
        return $this->hasOne('Variety', 'id', 'futures');
    }

    /**
     * 查询所有合约信息
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
        $arr = $this->where($map)->relation('exchange,futures')->order('id', 'asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['start_time'] = detail_time($value['start_time']);
            $value['end_time'] = detail_time($value['end_time']);
            $value["type"] = $value["type"] == 1 ? "国外" : "国内";
            $value["status"] = $value["status"] == 1 ? "正常" : "禁用";
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }
}