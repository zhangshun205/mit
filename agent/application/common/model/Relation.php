<?php

namespace app\common\model;

use think\Model;

class Relation extends Model
{
    /**
     * 关联方法名称信息
     * @return $this|\think\model\relation\BelongsTo
     */
    public function name()
    {
        return $this->belongsTo('AdminFunction', 'fuid', 'id');
    }

    /**
     * @var string 角色管理模型
     */
    private $AdminFunction;
    protected $table = 'sn_admin_relation';

    /**
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
            $value['time'] = detail_time($value['time']);
        }
        $data['data'] = $arr;
        $data['total'] = $this->where($map)->count();
        $data['num'] = page_num($data['total'], $size);
        return $data;
    }

    /**
     * 添加
     * @param $map
     * @return int|string
     */
    public function add($map)
    {
        $data['fuid'] = $map['fuid'];
        $data['roid'] = $map['roid'];
        $data['time'] = time();
        return $this->insert($data);
    }

    /**
     * @param $map
     * @return array
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function query_all($map)
    {
        $this->AdminFunction = new AdminFunction();
        $arr = $this->where($map)->relation(array('name'))->order('id asc')->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['rela'] = $this->AdminFunction->where(array(
                'pid' => $value['fuid'],
                'status' => 1,
            ))->select()->toArray();
        }
        return $arr;
    }

    /**
     * @param string $map
     * @return array|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function query($map)
    {
        $this->AdminFunction = new AdminFunction();
        $arr = $this->where($map)->relation(array('name'))->order('id asc')->select()->toArray();
        foreach ($arr as $key => &$value) {
            $value['rela'] = $this->AdminFunction->where('pid', $value['fuid'])->select()->toArray();
        }
        return $arr;
    }
}