<?php

namespace app\index\controller;

use app\index\model\Futures;
use app\index\model\PriceMinute;
use think\Controller;
use think\Db;
use think\Request;

class Test extends Controller
{
    private $Futures;
    private $PriceMinute;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Futures = new Futures();
        $this->PriceMinute = new PriceMinute();
    }

    public function index()
    {
        $code = empty($_GET['code']) ? 'HZH1' : $_GET['code'];
        $list = $this->Futures->where(array('id' => 6))->find();
        $tradeTime = json_decode($list['winter'], true);
        $array = array();
        $time = day_time();
        foreach ($tradeTime as $key => $value) {
            $value = explode("-", $value);
            $data = array();
            foreach ($value as $k => $v) {
                $v = explode(":", $v);
                $time_one = $time + $v[0] * 3600 + $v[1] * 60;
                $data[] = $time_one;
            }
            $array = $this->time_array($data[0], $data[1], $array);
        }
        $start_time = $array[0];
        $current_time = strtotime(date('YmdHi'));
        if ($start_time > $current_time) {
            $start_time = $start_time - 86400;
        }
        $name = 'minute';
        $file = 'data/' . $name . '/' . strtoupper($name) . '_' . $code . '.csv';
        $history_list = $this->new_time($file, count($array));
        $end_time = strtotime($history_list[count($history_list) - 1][0] . $history_list[count($history_list) - 1][1]);
        $history_list = $this->current_price_minute($code, $end_time, $history_list);
        $list = $this->list_data($array, $history_list, $start_time);
        return json($list);
    }

    public function current_price_minute($code, $end_time, $history_list)
    {
        $price_minute = Db::name('price_minute')->where(array('code' => $code, 'time' => array('gt', $end_time)))->select();
        foreach ($price_minute as $key => $value) {
            $array[0] = date('Ymd', $value['time']);
            $array[1] = date('Hi', $value['time']);
            $array[2] = floatval($value['open']);
            $array[3] = floatval($value['highest']);
            $array[4] = floatval($value['lowest']);
            $array[5] = floatval($value['close']);
            $array[6] = floatval($value['volume']);
            $array[7] = floatval($value['turnover']);
            array_push($history_list, $array);
        }
        return $history_list;
    }

    private function list_data($trade_time, $history_list, $start_time)
    {
        $list = array();
        $number = 0;
        foreach ($trade_time as $key => $value) {
            $values = date('YmdHi', $value);
            $arr = $this->outer_screen_date($history_list, $values, $start_time, $number);
            $array = $arr['array'];
            $number = $arr['number'];
            if ($array) {
                array_push($list, $array);
            }
            $history_list = $arr['data'];
        }
        return $list;
    }

    private function outer_screen_date($data, $date, $start_time, $number)
    {
        $array = array();
        $date = strtotime($date);
        foreach ($data as $key => $value) {
            $time = strtotime($value[0] . $value[1]);
            if ($time < $start_time) {
                unset($data[$key]);
            }
            if ($time == $date && $time > $start_time) {
                $array['date'] = $value[0];
                $array['time'] = $value[1];
                $array['close'] = $value[5];
                $array['volume'] = $value[6] - $number;
                $array['turnover'] = $value[7];
                $number = $value[6];
                unset($data[$key]);
                break;
            }
        }
        return array('array' => $array, 'data' => $data, 'number' => $number);
    }

    /**
     * 交易时间数据
     * @param $start
     * @param $end
     * @param array $array
     * @return array
     */
    private function time_array($start, $end, $array = array())
    {
        $difference = ($end - $start) / 60;
        for ($i = 0; $i < $difference; $i++) {
            array_push($array, $start + $i * 60);
        }
        return $array;
    }

    /**
     * 查询当前文件中的最新
     * @param $file //开高低收
     * @param $number
     * @return array
     */
    protected function new_time($file, $number)
    {
        $data = array();
        if (file_exists($file)) {
            $list = file_last_lines($file, $number);
            foreach ($list as $key => $value) {
                $data[$key] = explode(',', trim($value));
            }
        }
        return $data;
    }

    public function index2()
    {
        Db::query("TRUNCATE TABLE sn_recharge");
        Db::query("TRUNCATE TABLE sn_withdraw");
        Db::query("TRUNCATE TABLE sn_user");
        Db::query("TRUNCATE TABLE sn_user_bank");
        Db::query("TRUNCATE TABLE sn_user_account");
        Db::query("TRUNCATE TABLE sn_problem");
        Db::query("TRUNCATE TABLE sn_problem_type");
        Db::query("TRUNCATE TABLE sn_price_minute");
        Db::query("TRUNCATE TABLE sn_plus");
        Db::query("TRUNCATE TABLE sn_notice");
        Db::query("TRUNCATE TABLE sn_news");
        Db::query("TRUNCATE TABLE sn_minus");
        Db::query("TRUNCATE TABLE sn_entrust");
        Db::query("TRUNCATE TABLE sn_depot");
        Db::query("TRUNCATE TABLE sn_deal");
        Db::query("TRUNCATE TABLE sn_condition_sheet");
        Db::query("TRUNCATE TABLE sn_capital_flow");
        Db::query("TRUNCATE TABLE sn_agent");
        $this->index1();
    }

    public function index1()
    {
        $map['uid'] = 1;
        $map['account'] = 100000;
        $map['total'] = 100000;
        Db::name('user_account')->insert($map);
        $map = array();
        $map['number'] = '123456';
        $map['password'] = md5('123456');
        $map['security'] = md5('123456');
        $map['phone'] = '13300000001';
        $map['time'] = time();
        Db::name('user')->insert($map);
    }
}



















