<?php

namespace app\index\model;

use think\Model;

class SendSms extends Model
{
    protected $table = 'sn_send_sms';

    public function add_log($uid, $name, $phone, $type, $content)
    {
        $map['uid'] = $uid;
        $map['name'] = $name;
        $map['phone'] = $phone;
        $map['ip'] = request()->ip();
        $map['type'] = $type;
        $map['status'] = 1;
        $map['content'] = $content;
        $map['time'] = time();
        return $this->insert($map);
    }

    public function type_name($type)
    {
        switch ($type) {
            case 0:
                $name = '注册会员';
                break;
            case 1:
                $name = '忘记密码';
                break;
            default:
                $name = '';
                break;
        }
        return $name;
    }
}