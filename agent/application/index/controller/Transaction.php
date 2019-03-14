<?php

namespace app\index\controller;

use think\Request;
use app\common\model\Variety;
use app\common\model\Contract;
use app\common\model\Exchange;
use app\common\model\ExchangeRate;
use app\common\model\Trade;
use think\Session;

class Transaction extends Common
{
    private $Variety;
    private $Contract;
    private $Exchange;
    private $Trade;
    private $ExchangeRate;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Exchange = new Exchange();
        $this->Contract = new Contract();
        $this->Variety = new Variety();
        $this->Trade = new Trade();
        $this->ExchangeRate = new ExchangeRate();
    }


    /**
     * 交易所管理
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function exchange()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $exchange = $this->Exchange->where(array("code|name" => ['like', $name]))->find();
            empty($exchange) ? $map['name'] = ['like', "%$name%"] : $map['id'] = $exchange["id"];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Exchange->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                $lists = $this->Exchange->query_log($map, 1, 10000);
//                //$list = $this->User->query($_post["excel"]);
//                $this->export_contract($lists['data']);
//            }
//        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 修改交易所状态
     * @return array
     */
    public function mod_status()
    {
        $id = input('post.id/d');
        $status = input('post.status/d');
        $data["status"] = $status == 1 ? 0 : 1;
        $list = $this->Exchange->where('id', $id)->update($data);
        if ($list) {
            $r = msg_handle('修改成功', 1);
        } else {
            $r = msg_handle('修改失败', 0);
        }
        return $r;
    }

    /**
     * 添加修改交易所
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function exchange_add()
    {
        $id = input('get.id/d');
        if (isset($id)) {
            $list = $this->Exchange->where(array("id" => $id))->find();
        } else {
            $list = array();
        }
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 执行交易所添加修改操作
     * @return array
     */
    public function exchange_adds()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入交易所名称', 0);
            } elseif (empty($data['code'])) {
                $r = msg_handle('请输入交易所代码', 0);
            } elseif (empty($data['short'])) {
                $r = msg_handle('请输入交易所简称', 0);
            } elseif (empty($data['sort'])) {
                $r = msg_handle('请输入交易所排序', 0);
            } else {
                $id = $data["id"];
                if ($id) {
                    $data["time"] = time();
                    $list = $this->Exchange->where(array("id" => $id))->update($data);
                } else {
                    $data["time"] = time();
                    $list = $this->Exchange->insertGetId($data);
                }
                if ($list) {
                    $r = msg_handle('操作成功!', 1);
                } else {
                    $r = msg_handle('操作失败,请稍后重试!', 1);
                }
            }
        } else {
            $r = msg_handle('错误请求!', 0);
        }
        return $r;
    }

    /**
     * 交易所汇率管理
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function exchangeRate()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $map['name'] = ['like', "%$name%"];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->ExchangeRate->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                $lists = $this->Exchange->query_log($map, 1, 10000);
//                //$list = $this->User->query($_post["excel"]);
//                $this->export_contract($lists['data']);
//            }
//        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 修改汇率状态
     * @return array
     */
    public function modRateStatus()
    {
        $id = input('post.id/d');
        $status = input('post.status/d');
        $data["status"] = $status == 1 ? 0 : 1;
        $list = $this->ExchangeRate->where('id', $id)->update($data);
        if ($list) {
            $r = msg_handle('修改成功', 1);
        } else {
            $r = msg_handle('修改失败', 0);
        }
        return $r;
    }

    /**
     * 添加修改交易所汇率
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function exchangeRateEdit()
    {
        $id = input('get.id/d');
        if (isset($id)) {
            $list = $this->ExchangeRate->where(array("id" => $id))->find();
        } else {
            $list = array();
        }
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 执行汇率添加修改操作
     * @return array
     */
    public function exchangeRateEdits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入名称', 0);
            } elseif (empty($data['base'])) {
                $r = msg_handle('请输入兑换货币', 0);
            } elseif (empty($data['ratio'])) {
                $r = msg_handle('请输入汇率', 0);
            } else {
                $id = $data["id"];
                if ($id) {
                    $data["time"] = time();
                    $list = $this->ExchangeRate->where(array("id" => $id))->update($data);
                } else {
                    $data["time"] = time();
                    $list = $this->ExchangeRate->insertGetId($data);
                }
                if ($list) {
                    $r = msg_handle('操作成功!', 1);
                } else {
                    $r = msg_handle('操作失败,请稍后重试!', 1);
                }
            }
        } else {
            $r = msg_handle('错误请求!', 0);
        }
        return $r;
    }

    /**
     * 品种管理
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $ex_map['name|code|short'] = ['like', "%$name%"];
            $exchange = $this->Exchange->where($ex_map)->field('id')->find();
            if ($exchange) {
                $map['bourse'] = $exchange['id'];
            } else {
                $map['name|code|short'] = ['like', "%$name%"];
            }
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Variety->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                $lists = $this->Variety->query_log($map, 1, 10000);
//                //$list = $this->User->query($_post["excel"]);
//                $this->export_exchange($lists['data']);
//            }
//        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 添加品种
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function add_var()
    {
        $exchange = $this->Exchange->select();
        $this->assign('exchange', $exchange);
        return $this->fetch();
    }

    /**
     * 品种修改
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function var_edit()
    {
        $id = Request::instance()->param('id');
        $list = $this->Variety->where('id', $id)->find();
        $exchange = $this->Exchange->select();
        $this->assign('exchange', $exchange);
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 执行修改品类
     * @return \think\response\Json
     */
    public function update_edit()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入品种名称', 0);
            } elseif (empty($data['code'])) {
                $r = msg_handle('请输入合约代码', 0);
            } elseif (empty($data['short'])) {
                $r = msg_handle('请输入合约短码', 0);
            } elseif (empty($data['industry'])) {
                $r = msg_handle('请输入合约类型', 0);
            } else {
                if (!empty($data['id'])) {
                    $data["time"] = time();
                    $list = $this->Variety->where('id=' . $data['id'])->update($data);
                } else {
                    $data["time"] = time();
                    $list = $this->Variety->insertGetId($data);
                }
                if ($list) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('操作失败,请稍后重试!', 0);
                }
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return json($r);
    }

    /**
     * 合约管理
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function contract()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $ex_map['name|code|short'] = ['like', "%$name%"];
            $exchange = $this->Exchange->where($ex_map)->field('id')->find();
            $variety = $this->Variety->where($ex_map)->field('id')->find();
            if ($variety) {
                $map['futures'] = $variety['id'];
            } elseif ($exchange) {
                $map['bourse'] = $exchange['id'];
            } else {
                $map['name|code|short'] = ['like', "%$name%"];
            }
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Contract->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        //        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                $lists = $this->Contract->query_log($map, 1, 10000);
//                foreach ($lists["data"] as $k => &$v) {
//                    $lists["data"][$k]["variety"] = $this->Variety->where(array("id" => $v["bourse"]))->find();
//                }
//                //$list = $this->User->query($_post["excel"]);
//                $this->export_contract($lists['data']);
//            }
//        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 合约修改
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function contract_edit()
    {
        $id = Request::instance()->param('id');
        if (isset($id)) {
            $id = Request::instance()->param('id');
            $list = $this->Contract->where('id', $id)->find();
            $list['start_time'] = date('Y-m-d', $list['start_time']);
            $list['end_time'] = date('Y-m-d', $list['end_time']);
            $this->assign('list', $list);
        } else {
            $list = array(
                'futures' => '',
                'type' => '',
                'trade' => '',
                'status' => '',
                'futures_name' => '',
                'start_time' => date('Y-m-d'),
                'end_time' => date('Y-m-d'),
            );
            $this->assign('list', $list);
        }
        $variety = $this->Variety->select();
        foreach ($variety as $key => &$value) {
            if ($list['futures'] == $value['id']) {
                $list['futures_name'] = $value['name'];
            }
        }
        $this->assign('variety', $variety);
        return $this->fetch();
    }

    /**
     * 执行修改合约
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function update_contract()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入合约名称', 0);
            } elseif (empty($data['code'])) {
                $r = msg_handle('请输入合约代码', 0);
            } elseif (empty($data['start_time'])) {
                $r = msg_handle('请选择开始时间', 0);
            } elseif (empty($data['end_time'])) {
                $r = msg_handle('请选择交割时间', 0);
            } elseif (empty($data['status'])) {
                $r = msg_handle('请选择状态', 0);
            } else {
                $data['time'] = time();
                $futures = $this->Variety->where(array("id" => $data["futures"]))->find();
                $exchange = $this->Exchange->where(array("id" => $futures["bourse"]))->find();
                $data['start_time'] = strtotime($data['start_time']);
                $data['end_time'] = strtotime($data['end_time']);
                if (!empty($data['id'])) {
                    $data["bourse"] = $exchange["id"];
                    $data["time"] = time();
                    $list = $this->Contract->where('id', $data['id'])->update($data);
                } else {
                    $data["bourse"] = $exchange["id"];
                    $data["time"] = time();
                    $list = $this->Contract->insertGetId($data);;
                }
                if ($list) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('操作失败,请稍后重试!', 0);
                }
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return json($r);
    }

    /**
     * 删除合约
     * @return array
     */
    public function del_contract()
    {
        if (request()->isAjax()) {
            $id = $_POST['id'];
            $list = $this->Contract->where('id', $id)->delete();
            if ($list) {
                $r = msg_handle('操作成功', 1);
            } else {
                $r = msg_handle('操作失败', 0);
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $r;
    }

    /**
     * 交易品种管理
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function trans()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $map['name|code|month'] = ['like', "%$name%"];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Trade->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        if (isset($_GET["excel"])) {
//            if ($_GET["excel"]) {
//                $lists = $this->Variety->query_log($map, 1, 10000);
//                //$list = $this->User->query($_post["excel"]);
//                $this->export_exchange($lists['data']);
//            }
//        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /**
     * 交易品种修改
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function trans_edit()
    {
        $id = Request::instance()->param('id');
        if ($id) {
            $list = $this->Trade->where('id', $id)->find();
            $list['summer1'] = json_decode($list['summer'])[0];
            $list['summer2'] = json_decode($list['summer'])[1];
            $list['winter1'] = json_decode($list['winter'])[0];
            $list['winter2'] = json_decode($list['winter'])[1];
        } else {
            $list = array(
                'name' => '',
                'code' => '',
                'currency' => '',
                'bond' => '',
                'warn' => '',
                'close' => '',
                'storage' => '',
                'buy_fee' => '',
                'sell_fee' => '',
                'interest' => '',
                'summer1' => date('H:i'),
                'summer2' => date('H:i'),
                'winter1' => date('H:i'),
                'winter2' => date('H:i'),
                'wave_spot' => '',
                'wave_price' => '',
                'value' => '',
                'unit' => '',
                'month' => '',
                'remark' => '',
                'status' => '1',
            );
        }
        $rete = $this->ExchangeRate->select();
        $this->assign('rete', $rete);
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 执行修改交易品类
     * @return array
     */
    public function trans_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['name'])) {
                $r = msg_handle('请输入品种名称', 0);
            } elseif (empty($data['code'])) {
                $r = msg_handle('请输入合约代码', 0);
            } elseif (empty($data['currency'])) {
                $r = msg_handle('请选择交易币种', 0);
            } elseif (!$data['bond']) {
                $r = msg_handle('请输入每手保证金', 0);
            } elseif (!$data['warn']) {
                $r = msg_handle('请输入预警保证金', 0);
            } elseif (!$data['close']) {
                $r = msg_handle('请输入平仓保证金', 0);
            } elseif (!$data['storage']) {
                $r = msg_handle('请输入留仓保证金倍数', 0);
            } elseif (!$data['buy_fee']) {
                $r = msg_handle('请输入买入手续费', 0);
            } elseif (!$data['sell_fee']) {
                $r = msg_handle('请输入卖出手续费', 0);
            } elseif (!$data['interest']) {
                $r = msg_handle('请输入仓息', 0);
            } /*elseif (!$data['summer1']) {
                $r = msg_handle('请选择夏令时开始时间', 0);
            } elseif (!$data['summer2']) {
                $r = msg_handle('请选择夏令时结束时间', 0);
            } elseif (!$data['winter1']) {
                $r = msg_handle('请选择冬令时开始时间', 0);
            } elseif (!$data['winter2']) {
                $r = msg_handle('请选择冬令时结束时间', 0);
            }*/ elseif (empty($data['wave_spot'])) {
                $r = msg_handle('请输入波动点位', 0);
            } elseif (empty($data['wave_price'])) {
                $r = msg_handle('请输入波动价格', 0);
            } elseif (empty($data['value'])) {
                $r = msg_handle('请输入合约价值', 0);
            } elseif (empty($data['unit'])) {
                $r = msg_handle('请输入合约单位', 0);
            } elseif (empty($data['month'])) {
                $r = msg_handle('请输入合约月份', 0);
            } else {
                $data["time"] = time();
//                $data['summer'] = json_encode(array($data['summer1'], $data['summer2']));
//                $data['winter'] = json_encode(array($data['winter1'], $data['winter2']));
//                unset($data['summer1'], $data['summer2'], $data['winter1'], $data['winter2']);
                if (!empty($data['id'])) {
                    $list = $this->Trade->where('id', $data['id'])->update($data);
                } else {
                    $list = $this->Trade->insertGetId($data);
                }
                if ($list) {
                    $r = msg_handle('操作成功', 1);
                } else {
                    $r = msg_handle('操作失败,请稍后重试!', 0);
                }
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $r;
    }

//=====================================fengexian==================================================================


    /*
    节假日管理
     */
    public function holiday()
    {
        $map = '';
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->Closed->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);

        if (isset($_GET["excel"])) {
            if ($_GET["excel"]) {
                //$list = $this->User->query($_post["excel"]);
                $this->export_holiday($list['data']);
            }
        }
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        return $this->fetch();
    }

    /*
    修改交易参数
     */
    public function parameter_edit()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['open_transaction_number'])) {
                $r = msg_handle('请输入开仓默认手数', 0);
                return $r;
            } elseif (empty($data['customs_max_number'])) {
                $r = msg_handle('请输入报单最大手数', 0);
                return $r;
            } else {
                $list = $this->Config->where('uid=0')->update($data);
            }
            if ($list) {
                //设置成功后跳转页面的地址，默认的返回页面是$_SERVER['HTTP_REFERER']
                $this->success('操作成功', 'Transaction/holiday');
            } else {
                //错误页面的默认跳转页面是返回前一页，通常不需要设置
                $this->error('操作失败,未改动数据!');
            }
        }
    }

    /*
    删除假期
     */
    public function del_holiday()
    {
        if (request()->isAjax()) {
            $id = $_POST['id'];
            $list = $this->Closed->where('id=' . $id)->delete();
            if ($list) {
                //设置成功后跳转页面的地址
                $this->success('操作成功', 'Article/holiday');
            } else {
                //错误页面的默认跳转页面是返回前一页，通常不需要设置
                $this->error('操作失败');
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return $r;
    }

    /*
    添加假期
     */
    public function holiday_edit()
    {
        if (request()->isAjax()) {
            $admin_user = Session::get('admin');
            $data = $_POST['arr'];
            if (empty($data['explain'])) {
                $r = msg_handle('请输入假期名称', 0);
                return $r;
            } elseif (empty($data['time'])) {
                $r = msg_handle('请输入开始时间', 0);
                return $r;
            } elseif (empty($data['closed_time'])) {
                $r = msg_handle('请输入结束时间', 0);
                return $r;
            } else {
                $data["time"] = strtotime($data['time']);
                $data["closed_time"] = strtotime($data['closed_time']);
                $data["name"] = $admin_user["name"];
                $data["add_time"] = time();
                $list = $this->Closed->insertGetId($data);
            }
            if ($list) {
                //设置成功后跳转页面的地址，默认的返回页面是$_SERVER['HTTP_REFERER']
                $this->success('操作成功', 'Transaction/holiday');
            } else {
                //错误页面的默认跳转页面是返回前一页，通常不需要设置
                $this->error('操作失败,未改动数据!');
            }
        }
        return $this->fetch();
    }


    public function export_exchange($xlsData)
    {//导出Excel表格操作
        //$xlsData = $this->User->select();
        Vendor('PHPExcel.Classes.PHPExcel');//调用类库,路径是基于vendor文件夹的
        Vendor('PHPExcel.Classes.PHPExcel.Worksheet.Drawing');
        Vendor('PHPExcel.Classes.PHPExcel.Writer.Excel2007');
        $objExcel = new \PHPExcel();
        //set document Property
        $objWriter = \PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');

        $objActSheet = $objExcel->getActiveSheet();
        $key = ord("A");
        $letter = explode(',', "A,B,C,D,E,F,G");
        $arrHeader = array('交易所名称', '交易所类型', '品种名称', '短码', '代码', '类型', '添加时间');
        //填充表头信息
        $lenth = count($arrHeader);
        for ($i = 0; $i < $lenth; $i++) {
            $objActSheet->setCellValue("$letter[$i]1", "$arrHeader[$i]");
        };
        //填充表格信息
        foreach ($xlsData as $k => $v) {
            $k += 2;
            $objActSheet->setCellValue('A' . $k, $v['bourse_name']);
            $objActSheet->setCellValue('B' . $k, $v['type']);
            // // 图片生成
            // $objDrawing[$k] = new \PHPExcel_Worksheet_Drawing();
            // $objDrawing[$k]->setPath('public/static/admin/images/profile_small.jpg');
            // // 设置宽度高度
            // $objDrawing[$k]->setHeight(40);//照片高度
            // $objDrawing[$k]->setWidth(40); //照片宽度
            // /*设置图片要插入的单元格*/
            // $objDrawing[$k]->setCoordinates('C'.$k);
            // // 图片偏移距离
            // $objDrawing[$k]->setOffsetX(30);
            // $objDrawing[$k]->setOffsetY(12);
            // $objDrawing[$k]->setWorksheet($objPHPExcel->getActiveSheet());
            // 表格内容
            $objActSheet->setCellValue('C' . $k, $v['name']);
            $objActSheet->setCellValue('D' . $k, $v['short']);
            $objActSheet->setCellValue('E' . $k, $v['code']);
            $objActSheet->setCellValue('F' . $k, $v['industry']);
            $objActSheet->setCellValue('G' . $k, $v['time']);


            // 表格高度
            $objActSheet->getRowDimension($k)->setRowHeight(20);
        }

        $width = array(20, 20, 15, 10, 10, 10, 30);
        //设置表格的宽度
        $objActSheet->getColumnDimension('A')->setWidth($width[3]);
        $objActSheet->getColumnDimension('B')->setWidth($width[3]);
        $objActSheet->getColumnDimension('C')->setWidth($width[3]);
        $objActSheet->getColumnDimension('D')->setWidth($width[3]);
        $objActSheet->getColumnDimension('E')->setWidth($width[3]);
        $objActSheet->getColumnDimension('F')->setWidth($width[3]);
        $objActSheet->getColumnDimension('G')->setWidth($width[3]);

        $outfile = "品种信息表.xls";
        ob_end_clean();
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header('Content-Disposition:inline;filename="' . $outfile . '"');
        header("Content-Transfer-Encoding: binary");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        $objWriter->save('php://output');
    }


    public function export_contract($xlsData)
    {//导出Excel表格操作
        //$xlsData = $this->User->select();
        Vendor('PHPExcel.Classes.PHPExcel');//调用类库,路径是基于vendor文件夹的
        Vendor('PHPExcel.Classes.PHPExcel.Worksheet.Drawing');
        Vendor('PHPExcel.Classes.PHPExcel.Writer.Excel2007');
        $objExcel = new \PHPExcel();
        //set document Property
        $objWriter = \PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');

        $objActSheet = $objExcel->getActiveSheet();
        $key = ord("A");
        $letter = explode(',', "A,B,C,D,E,F,G");
        $arrHeader = array('品种名称', '交易所代码', '合约名称', '合约代码', '合约短码', '合约类型', '合约交割日');
        //填充表头信息
        $lenth = count($arrHeader);
        for ($i = 0; $i < $lenth; $i++) {
            $objActSheet->setCellValue("$letter[$i]1", "$arrHeader[$i]");
        };
        //填充表格信息
        foreach ($xlsData as $k => $v) {
            $k += 2;
            $objActSheet->setCellValue('A' . $k, $v['variety']['name'] . "(" . $v['variety']['bourse_name'] . ")");
            $objActSheet->setCellValue('B' . $k, $v['bourse_code']);
            // // 图片生成
            // $objDrawing[$k] = new \PHPExcel_Worksheet_Drawing();
            // $objDrawing[$k]->setPath('public/static/admin/images/profile_small.jpg');
            // // 设置宽度高度
            // $objDrawing[$k]->setHeight(40);//照片高度
            // $objDrawing[$k]->setWidth(40); //照片宽度
            // /*设置图片要插入的单元格*/
            // $objDrawing[$k]->setCoordinates('C'.$k);
            // // 图片偏移距离
            // $objDrawing[$k]->setOffsetX(30);
            // $objDrawing[$k]->setOffsetY(12);
            // $objDrawing[$k]->setWorksheet($objPHPExcel->getActiveSheet());
            // 表格内容
            $objActSheet->setCellValue('C' . $k, $v['name']);
            $objActSheet->setCellValue('D' . $k, $v['code']);
            $objActSheet->setCellValue('E' . $k, $v['short']);
            $objActSheet->setCellValue('F' . $k, $v['type']);
            $objActSheet->setCellValue('G' . $k, $v['variety']['trading_time']);


            // 表格高度
            $objActSheet->getRowDimension($k)->setRowHeight(20);
        }

        $width = array(30, 20, 15, 10, 10, 30, 10, 15);
        //设置表格的宽度
        $objActSheet->getColumnDimension('A')->setWidth($width[5]);
        $objActSheet->getColumnDimension('B')->setWidth($width[3]);
        $objActSheet->getColumnDimension('C')->setWidth($width[3]);
        $objActSheet->getColumnDimension('D')->setWidth($width[3]);
        $objActSheet->getColumnDimension('E')->setWidth($width[3]);
        $objActSheet->getColumnDimension('F')->setWidth($width[3]);
        $objActSheet->getColumnDimension('G')->setWidth($width[3]);

        $outfile = "合约信息表.xls";
        ob_end_clean();
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header('Content-Disposition:inline;filename="' . $outfile . '"');
        header("Content-Transfer-Encoding: binary");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        $objWriter->save('php://output');
    }


    public function export_holiday($xlsData)
    {//导出假期Excel表格操作
        //$xlsData = $this->User->select();
        Vendor('PHPExcel.Classes.PHPExcel');//调用类库,路径是基于vendor文件夹的
        Vendor('PHPExcel.Classes.PHPExcel.Worksheet.Drawing');
        Vendor('PHPExcel.Classes.PHPExcel.Writer.Excel2007');
        $objExcel = new \PHPExcel();
        //set document Property
        $objWriter = \PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');

        $objActSheet = $objExcel->getActiveSheet();
        $key = ord("A");
        $letter = explode(',', "A,B,C,D,E");
        $arrHeader = array('假期名称', '开始时间', '结束时间', '创建人', '备注');
        //填充表头信息
        $lenth = count($arrHeader);
        for ($i = 0; $i < $lenth; $i++) {
            $objActSheet->setCellValue("$letter[$i]1", "$arrHeader[$i]");
        };
        //填充表格信息
        foreach ($xlsData as $k => $v) {
            $k += 2;
            $objActSheet->setCellValue('A' . $k, $v['explain']);
            $objActSheet->setCellValue('B' . $k, $v['time']);
            // // 图片生成
            // $objDrawing[$k] = new \PHPExcel_Worksheet_Drawing();
            // $objDrawing[$k]->setPath('public/static/admin/images/profile_small.jpg');
            // // 设置宽度高度
            // $objDrawing[$k]->setHeight(40);//照片高度
            // $objDrawing[$k]->setWidth(40); //照片宽度
            // /*设置图片要插入的单元格*/
            // $objDrawing[$k]->setCoordinates('C'.$k);
            // // 图片偏移距离
            // $objDrawing[$k]->setOffsetX(30);
            // $objDrawing[$k]->setOffsetY(12);
            // $objDrawing[$k]->setWorksheet($objPHPExcel->getActiveSheet());
            // 表格内容
            $objActSheet->setCellValue('C' . $k, $v['closed_time']);
            $objActSheet->setCellValue('D' . $k, $v['name']);
            $objActSheet->setCellValue('E' . $k, $v['desc']);


            // 表格高度
            $objActSheet->getRowDimension($k)->setRowHeight(20);
        }

        $width = array(20, 20, 15, 10, 10, 30, 10, 15);
        //设置表格的宽度
        $objActSheet->getColumnDimension('A')->setWidth($width[3]);
        $objActSheet->getColumnDimension('B')->setWidth($width[3]);
        $objActSheet->getColumnDimension('C')->setWidth($width[3]);
        $objActSheet->getColumnDimension('D')->setWidth($width[3]);
        $objActSheet->getColumnDimension('E')->setWidth($width[3]);

        $outfile = "假期信息表.xls";
        ob_end_clean();
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header('Content-Disposition:inline;filename="' . $outfile . '"');
        header("Content-Transfer-Encoding: binary");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        $objWriter->save('php://output');
    }

}



















