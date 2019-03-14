<?php

namespace app\index\nozzle;

use think\Controller;
use think\Request;

class OuterDiscTwo extends Controller
{
    protected $address = '120.55.27.250';
    protected $port = 8003;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    public function index()
    {
        $contract = array('1903', '1906', '1909');
        $list = $this->real_quotation($contract);
        print_r($list);
    }

    /**
     * 实时行情
     * @param $contract
     * @return mixed
     */
    public function real_quotation($contract)
    {
        $data['futu_exch_type'] = 'EUREX';
        $data['commodity_type'] = 'DAX';
        $data['futu_product_type'] = 1;
        $list = array();
        foreach ($contract as $key => $value) {
            $data['contract_code'] = $value;
            $quotation = do_get('http://' . $this->address . ':' . $this->port . '/ofutuhq/real?' . http_build_query($data, '', '&'));
            $quotation = json_decode($quotation, true);
            if ($quotation['result'][0]['data']) {
                $quotation = $quotation['result'][0]['data'][0];
                $array = $this->return_data($quotation, $value);
            } else {
                $array = $this->null_data($value);
            }
            array_push($list, $array);
        }
        return $list;
    }

    private function null_data($code)
    {
        $arr['code'] = 'DAX' . $code;
        $arr['short'] = 'DAX' . $code;
        $arr['name'] = '德指' . $code;
        $arr['bid1_price'] = '--';
        $arr['bid1_volume'] = '--';
        $arr['ask1_price'] = '--';
        $arr['ask1_volume'] = '--';
        $arr['open'] = '--';
        $arr['high'] = '--';
        $arr['low'] = '--';
        $arr['close'] = '--';
        $arr['p_close'] = '--';
        $arr['p_clear'] = '--';
        $arr['clear'] = '--';
        $arr['volume'] = '--';
        $arr['turnover'] = '--';
        $arr['dateTime'] = '--';
        $arr['up_num'] = '--';
        $arr['up_ratio'] = '--';
        $arr['exchange'] = 'EUREX';
        return $arr;
    }

    public function return_data($quotation, $value)
    {
        $arr['code'] = 'DAX' . $value;
        $arr['short'] = 'DAX' . $value;
        $arr['name'] = '德指' . $value;
        $arr['close'] = floatval($quotation['last_price']) == 0 ? '--' : $quotation['last_price'];//最新价
        $arr['bid1_price'] = floatval($quotation['bid_price1']) == 0 ? '--' : $quotation['bid_price1']; //买一价
        $arr['bid1_volume'] = floatval($quotation['bid_volume1']) == 0 ? '--' : $quotation['bid_volume1'];//买一量
        $arr['ask1_price'] = floatval($quotation['ask_price1']) == 0 ? '--' : $quotation['ask_price1'];      //卖一价
        $arr['ask1_volume'] = floatval($quotation['ask_volume1']) == 0 ? '--' : $quotation['ask_volume1'];//卖一量
        $arr['open'] = floatval($quotation['open_price']) == 0 ? '--' : $quotation['open_price'];//开盘价
        $arr['high'] = floatval($quotation['high_price']) == 0 ? '--' : $quotation['high_price'];//最高价
        $arr['low'] = floatval($quotation['low_price']) == 0 ? '--' : $quotation['low_price']; //最低价
        $arr['p_close'] = floatval($quotation['settle_price']) == 0 ? '--' : $quotation['settle_price'];//昨收价
        $arr['clear'] = floatval($quotation['pre_settle_price']) == 0 ? '--' : $quotation['pre_settle_price'];//结算价
        $arr['p_clear'] = floatval($quotation['settle_price']) == 0 ? '--' : $quotation['settle_price'];//昨结算价
        $arr['volume'] = floatval($quotation['business_balance']) == 0 ? '--' : $quotation['business_balance'];//成交量
        $arr['turnover'] = floatval($quotation['position']) == 0 ? '--' : $quotation['position'];//持仓量
        $arr['dateTime'] = date('H:i:s', strtotime($quotation['date_time']));//时间
        $arr['up_num'] = $quotation['last_price'] - $quotation['settle_price'];//涨跌幅
        if (floatval($quotation['settle_price'])) {
            $arr['up_ratio'] = ($quotation['last_price'] - $quotation['settle_price']) / $quotation['settle_price'] * 100;//涨跌幅
        } else {
            $arr['up_ratio'] = '--';
        }
        $arr['up_stop'] = '--';//涨停
        $arr['down_stop'] = '--';//跌停
        $arr['exchange'] = 'EUREX';
        return $arr;
    }

    //日k线数据
    public function day_kline($contract_code = '1903')
    {
        $data['futu_exch_type'] = 'EUREX';
        $data['commodity_type'] = 'DAX';
        $data['contract_code'] = $contract_code;
        $data['request_num'] = 30;
        $data = http_build_query($data, '', '&');
        $list = do_get('http://' . $this->address . ':' . $this->port . '/ofutuhq/kline?' . $data);
        $list = json_decode($list, true);
        $list = $list['result'][0]['data'];
        $array = array();
        foreach ($list as $key => $value) {
            $arr['close'] = floatval($value['close_price']);
            $arr['high'] = floatval($value['high_price']);
            $arr['low'] = floatval($value['low_price']);
            $arr['open'] = floatval($value['open_price']);
            $arr['number'] = $value['business_amount'];
            $arr['date'] = $value['date'];
            array_push($array, $arr);
        }
        return $array;
    }

    public function minute_kline()
    {
        $data['contract_code'] = '1903';
        $data['futu_exch_type'] = 'EUREX';
        $data['commodity_type'] = 'DAX';
        $data['k_type'] = 1;//分钟：1: 1分钟 3：3分钟 5：5分钟 15:15分钟 30:30分钟 60:60分钟
        $data['request_num'] = 100;
        $data = http_build_query($data, '', '&');
        $list = do_get('http://' . $this->address . ':' . $this->port . '/ofutuhq/mline?' . $data);
        $list = json_decode($list, true);
        $list = $list['result'][0]['data'];
        return $list;
    }

    //分时明细
    public function minute_detailed($contract_code = '1903')
    {
        $data['futu_exch_type'] = 'EUREX';
        $data['commodity_type'] = 'DAX';
        $data['contract_code'] = $contract_code;
        $minute = (strtotime(date('YmdHi')) - (day_time() + 8 * 60 * 60 + 15 * 60)) / 60;
        $data['request_num'] = $minute;
        $data = http_build_query($data, '', '&');
        $list = do_get('http://' . $this->address . ':' . $this->port . '/ofutuhq/trend?' . $data);
        $list = json_decode($list, true);
        $list = $list['result'][0]['data'];
        $array = array();
        foreach ($list as $key => $value) {
            $arr['close'] = floatval($value['close_price']);
            $arr['high'] = floatval($value['high_price']);
            $arr['low'] = floatval($value['low_price']);
            $arr['open'] = floatval($value['open_price']);
            $arr['number'] = $value['min_amount'];
            $arr['date'] = $value['date'];
            $arr['minute'] = $value['min_time'] + 1;
            array_push($array, $arr);
        }
        return $array;
    }
}