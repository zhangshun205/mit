<?php

namespace app\index\controller;

use app\index\model\News;
use app\index\model\Notice;
use app\index\model\Protocol;
use think\Controller;
use think\Request;

class Home extends Controller
{
    private $Protocol;
    private $Notice;
    private $News;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Protocol = new Protocol();
        $this->Notice = new Notice();
        $this->News = new News();
    }

    public function news_list()
    {
        return msg_handle('', 1, $this->News->query_log());
    }

    public function notice_info()
    {
        return msg_handle('', 1, $this->Notice->query_find());
    }

    /**
     * 免责协议
     * @return mixed
     */
    public function about_us()
    {
        $data['content'] = $this->Protocol->query_log(2);
        return msg_handle('', 1, $data);
    }

    /**
     * 出入金说明
     * @return mixed
     */
    public function access_funds()
    {
        $data['content'] = $this->Protocol->query_log(3);
        return msg_handle('', 1, $data);
    }


    /**
     * 服务器信息
     * @return array
     */
    public function index()
    {
        $list['server'] = array(
            array('id' => 1, 'name' => '电信1'),
            array('id' => 2, 'name' => '电信2'),
            array('id' => 3, 'name' => '电信3'),
            array('id' => 4, 'name' => '电信4'),
            array('id' => 5, 'name' => '电信5'),
        );
        $list['logo'] = '期易通';
        $list['name'] = '期易通';
        $list['version'] = '6.9.0';
        return msg_handle('', 1, $list);
    }

    public function trade_login()
    {
        $list = array(
            array('id' => 1, 'name' => '期易通'),
            array('id' => 2, 'name' => '测试专用'),
        );
        return msg_handle('', 1, $list);
    }

    /**
     * 免责协议
     * @return mixed
     */
    public function disclaimer_protocol()
    {
        $data['content'] = $this->Protocol->query_log(1);
        return msg_handle('', 1, $data);
    }

    public function about($data)
    {
        $software['name'] = '期易通-交易端(期易通)';
        $software['version'] = '6.9.0';
        $user['effective_date'] = '永久有效';
        if ($data['code'] == 0) {
            $user['name'] = '行情';
            $support['phone'] = '';
            $software['website'] = '';
        } else {
            $user['name'] = $data['data']['number'];
            $support['phone'] = '出金时间早上9点-下午17点';
            $software['website'] = '公司账户支付:http://www.mwgj.hk、入金:www.mawei.hk/';
        }
        $list['software'] = $software;
        $list['support'] = $support;
        $list['user'] = $user;
        return msg_handle('', 1, $list);
    }
}












