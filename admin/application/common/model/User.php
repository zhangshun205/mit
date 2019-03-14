<?php

namespace app\common\model;

use think\Model;
use think\Db;
use app\common\model\Account;


class User extends Model
{
    protected $table = 'sn_user';

    public function account()
    {
        return $this->belongsTo('Account', 'id', 'uid')->field('account');
    }

    public function bank()
    {
        return $this->belongsTo('UserBank', 'id', 'uid')->field('bank_side');
    }

    /**查询会员信息
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
        $defaltPng = '/uploads/default.png';
        $arr = $this->where($map)->relation(array('account', 'bank'))->order('time asc')->page($page, $size)->select();
        foreach ($arr as $key => &$value) {
            $value['positive'] = empty($value['positive']) ? $defaltPng : $value['positive'];
            $value['other_side'] = empty($value['other_side']) ? $defaltPng : $value['other_side'];
            $value['time'] = detail_time($value['time']);
            $value['status'] = $value['status'] == 1 ? '已启用' : '已禁用';
            $value['real_status'] = $value['certified'] == 1 ? '已实名' : '未实名';
            $value['bank_side'] = empty($value['bank']['bank_side']) ? $defaltPng : $value['bank']['bank_side'];
        }
        $list['data'] = $arr;
        $list['total'] = $this->where($map)->count();
        $list['num'] = page_num($list['total'], $size);
        return $list;
    }

    /**
     * 用户注册信息
     * @param $data
     * @return int|string
     */
    public function register($data)
    {
        $res["name"] = $data["real_name"];
        $res["phone"] = $data["phone"];
        $res["password"] = md5($data["password"]);
        $res["security"] = md5($data["security"]);
        $res["time"] = time();
        $res["type"] = $data['type'];
        $res["card"] = $data["card"];
        $res["code"] = createOrderNum(2);
        $res["login_ip"] = $_SERVER["REMOTE_ADDR"];
        $res["token"] = md5($data["phone"] . time());
        $res["agent"] = $data["agent"];
        $res["reid"] = $data["reid"];
        $res["status"] = 1;
        return $this->insertGetId($res);
    }

}
