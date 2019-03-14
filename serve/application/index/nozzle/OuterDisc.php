<?php

namespace app\index\nozzle;

use think\Controller;
use think\Request;

class OuterDisc extends Controller
{
    protected $address = '47.110.136.149';
    protected $port = 80;
    protected $Quotation;
    protected $PriceMinute;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    /**
     * 外盘行情列表
     * @param $exchange array 交易所信息
     * @param $contract mixed 合约信息
     * @return array
     */
    public function index($exchange, $contract)
    {
        $contract = array();
        $list = $this->market_data($this->exchange_info($exchange['code']));
        foreach ($list as $kye => $value) {
            if ($exchange['code'] == 'CME') {
                if (strstr($value['name'], '小纳指') || strstr($value['name'], '小标普')) {
                    $array = $this->return_data($value, $exchange['code']);
                    array_push($contract, $array);
                }
            } elseif ($exchange['code'] == 'CBOT') {
                if (strstr($value['name'], '小道指')) {
                    $array = $this->return_data($value, $exchange['code']);
                    array_push($contract, $array);
                }
            } else if ($exchange['code'] == 'HKEX') {
                if (strstr($value['name'], '恒指') || strstr($value['name'], '小恒')) {
                    $array = $this->return_data($value, $exchange['code']);
                    array_push($contract, $array);
                }
            } else if ($exchange['code'] == 'SGX') {

            } else if ($exchange['code'] == 'EUREX') {
                if (strstr($value['name'], '小德指')) {
                    $array = $this->return_data($value, $exchange['code']);
                    array_push($contract, $array);
                }
            } else {
                $array = $this->return_data($value, $exchange['code']);
                array_push($contract, $array);
            }
        }
        $contract = list_sort_by($contract, 'short', 'ASC');
        return $contract;
    }

    /**
     * 数据处理
     * @param $quotation array 行情信息
     * @param $code string 交易所代码
     * @return mixed
     */
    private function return_data($quotation, $code)
    {
        $arr['code'] = $quotation['name'];
        $arr['short'] = $quotation['symbol'];
        $arr['name'] = contract_name($quotation['name'], $quotation['symbol']);
        $arr['bid1_price'] = $quotation['bid1Price'];
        $arr['bid1_volume'] = $quotation['bid1Volume'];
        $arr['ask1_price'] = $quotation['ask1Price'];
        $arr['ask1_volume'] = $quotation['ask1Volume'];
        $arr['open'] = $quotation['open'];
        $arr['high'] = $quotation['high'];
        $arr['low'] = $quotation['low'];
        $arr['close'] = $quotation['close'];
        $arr['p_close'] = $quotation['pClose'];
        $arr['p_clear'] = $quotation['pClose'];
        $arr['clear'] = '--';
        $arr['volume'] = '--';
        $arr['turnover'] = $quotation['turnover'];
        $arr['dateTime'] = $quotation['dateTime'];
        $arr['up_num'] = round(($quotation['close'] - $quotation['pClose']), 2);
        if (floatval($quotation['pClose'])) {
            $arr['up_ratio'] = round(($quotation['close'] - $quotation['pClose']) / $quotation['pClose'] * 100, 2);//涨跌幅
        } else {
            $arr['up_ratio'] = '--';
        }
        $arr['up_stop'] = round(($quotation['pClose'] * (1 + 0.1)), 4);//涨停
        $arr['down_stop'] = round(($quotation['pClose'] * (1 - 0.1)), 4);//跌停
        $arr['exchange'] = $code;
        return $arr;
    }

    /**
     * 交易所区分
     * @param $exchange
     * @return string
     */
    private function exchange_info($exchange)
    {
        if ($exchange == 2) {
            return 'CX';
        } else if ($exchange == 3) {
            return 'NX';
        } else {
            return 'IF';
        }
    }

    /**
     * 市场数据处理
     * @param $exchange string 市场
     * @return mixed
     */
    private function market_data($exchange)
    {
        $list = do_get('http://' . $this->address . ':' . $this->port . '/quoteList?exchCode=' . trim($exchange));
        $list = json_decode($list, true);
        return $list;
    }

    /**
     * 行情详细
     * @param string $short 合约信息
     * @return mixed
     */
    public function market_detail($short = 'CONJ')
    {
        $data = do_get('http://' . $this->address . ':' . $this->port . '/snapshot?symbol=' . trim($short));
        $data = json_decode($data, true);
        if ($data == []) {
            return array();
        } else {
            return $data[0];
        }
    }

    /**
     * 行情详细2
     * @param string $short 合约信息
     * @return mixed
     */
    public function market_details($short = 'CONG')
    {
        $data = do_get('http://' . $this->address . ':' . $this->port . '/snapshot?symbol=' . trim($short));
        $data = json_decode($data, true);
        if (empty($data)) {
            $data = array();
        } else {
            $data = $this->market_details_data($data[0]);
        }
        return $data;
    }

    public function market_details_data($list)
    {
        $arr['name'] = contract_name($list['name'], $list['symbol']);
        $arr['code'] = substr($list['symbol'], 0, 2) . contract_name('', $list['symbol']);
        $arr['short'] = $list['symbol'];
        $arr['current'] = $list['close'];
        $arr['change'] = $list['change'];
        $arr['change_rate'] = $list['changeRate'];
        $arr['volume'] = $list['volume'];//成交
        $arr['turnover'] = $list['turnover'];//持仓
        $arr['up_stop'] = round(($list['pClose'] * (1 + 0.1)), 4);//涨停
        $arr['down_stop'] = round(($list['pClose'] * (1 - 0.1)), 4);//跌停
        $arr['close'] = $list['pClose'];
        $arr['p_close'] = $list['pClose'];
        $arr['p_clear'] = $list['pClose'];
        $arr['open'] = $list['open'];
        $arr['high'] = $list['high'];
        $arr['low'] = $list['low'];
        return $arr;
    }

    /**
     * 分时数据
     * @param string $short
     * @return mixed
     */
    public function time_sharing($short = 'CONG')
    {
        $data = do_get('http://' . $this->address . ':' . $this->port . '/minute?symbol=' . trim($short));
        $data = $this->time_sharing_data(json_decode($data, true)[0]);
        return $data;
    }

    /**
     * 分时数据处理
     * @param $list array
     * @return array
     */
    public function time_sharing_data($list)
    {
        $arr['name'] = contract_name($list['name'], $list['symbol']);
        $arr['code'] = substr($list['symbol'], 0, 2) . contract_name('', $list['symbol']);
        $arr['short'] = $list['symbol'];
        $arr['date'] = $list['tradeDate'];
        $arr['p_close'] = $list['pClose'];
        $arr['time'] = $this->time_data($list['tradeTime']);
        $list_data = $this->list_data($this->time_data($list['tradeTime']), $list['data']);
        return array('list_data' => $list_data, 'arr' => $arr);
    }

    private function list_data($trade_time, $data)
    {
        $list = array();
        foreach ($trade_time as $key => $value) {
            $arr = array();
            $values = date('YmdHi', $value);
            $arr['time'] = date('Hi', $value);
            $arr['close'] = 0;
            $arr['volume'] = 0;
            $arr['turnover'] = 0;
            foreach ($data as $k => $v) {
                $time = $v['date'] . $v['time'];
                if ($time == $values) {
                    $arr['time'] = $v['time'];
                    $arr['close'] = $v['close'];
                    $arr['volume'] = $v['volume'];
                    $arr['turnover'] = $v['turnover'];
                    array_push($list, $arr);
                }
            }

        }
        return $list;
    }

    /**
     * 时间处理
     * @param $trade_time
     * @return array
     */
    private function time_data($trade_time)
    {
        $time = day_time();
        $trade_time = explode("|", $trade_time);
        $array = array();
        foreach ($trade_time as $key => $value) {
            $value = explode("~", $value);
            $data = array();
            foreach ($value as $k => $v) {
                $v = sprintf("%04d", $v);
                $hour = substr($v, 0, 2);
                $minute = substr($v, 2, 2);
                $time_one = $time + $hour * 3600 + $minute * 60;
                $data[] = $time_one;
            }
            $array = $this->time_array($data[0], $data[1], $array);
        }
        return $array;
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

    public function trade_tick($short = 'CONC', $number = 10)
    {
        $data = do_get('http://' . $this->address . ':' . $this->port . '/tick?symbol=' . trim($short) . '&num=' . $number);
        $data = json_decode($data, true);
        return $data['data'];
    }

    /**
     * K数据
     * @param string $short
     * @param $period  string 时期001 1分钟；005 5分钟；015 15分钟；030 30分钟；060 60分钟；100 日线；200 周线；300 月线
     * @return mixed
     */
    public function kline_sharing($short = 'CONG', $period = '001')
    {
        $data = do_get('http://' . $this->address . ':' . $this->port . '/kline?symbol=' . trim($short) . '&period=' . $period);
        $data = json_decode($data, true);
        if (empty($data)) {
            $data = array();
        } else {
            $data = $data[0]['data'];
        }
        return $data;
    }
}