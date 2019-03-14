<?php

namespace app\index\nozzle;

use think\Controller;
use think\Debug;
use think\Request;

class InsideDish extends Controller
{

    private $Contract;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    /**
     * 查询合约列表
     * @param $exchange array 交易所
     * @param $contract mixed 合约
     * @return mixed
     */
    public function index($exchange, $contract)
    {
        if ($contract->isEmpty()) {
            $contract = array();
        } else {
            $contract = collection($contract)->toArray();
        }
        $stocks = $this->merge_short($contract);
        $codes_price = $this->contracts_real($stocks);
        foreach ($contract as $key => $value) {
            $quotation = $this->list_data($codes_price, $value['short']);
            $array = $this->return_data($quotation, $exchange['code']);
            $value = array_merge($value, $array);
            $contract[$key] = $value;
        }
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
        unset($quotation[0]);
        $quotation = array_merge($quotation);
        $quotation_length = count($quotation);
        if ($quotation_length < 28) {
            $arr = $this->null_data($code);
        } else if ($quotation_length == 28) {
            $arr['close'] = floatval($quotation[8]) == 0 ? '--' : $quotation[8];//最新价
            $arr['bid1_price'] = floatval($quotation[6]) == 0 ? '--' : $quotation[6]; //买一价
            $arr['bid1_volume'] = floatval($quotation[11]) == 0 ? '--' : $quotation[11];//买一量
            $arr['ask1_price'] = floatval($quotation[7]) == 0 ? '--' : $quotation[7];      //卖一价
            $arr['ask1_volume'] = floatval($quotation[12]) == 0 ? '--' : $quotation[12];//卖一量
            $arr['open'] = floatval($quotation[2]) == 0 ? '--' : $quotation[2];//开盘价
            $arr['high'] = floatval($quotation[3]) == 0 ? '--' : $quotation[3];//最高价
            $arr['low'] = floatval($quotation[4]) == 0 ? '--' : $quotation[4]; //最低价
            $arr['p_close'] = floatval($quotation[5]) == 0 ? '--' : $quotation[5];//昨收价
            $arr['clear'] = floatval($quotation[9]) == 0 ? '--' : $quotation[9];//结算价
            $arr['p_clear'] = floatval($quotation[10]) == 0 ? '--' : $quotation[10];//昨结算价
            $arr['volume'] = floatval($quotation[14]) == 0 ? '--' : $quotation[14];//成交量
            $arr['turnover'] = floatval($quotation[13]) == 0 ? '--' : $quotation[13];//持仓量
            $arr['dateTime'] = $quotation[17];//时间
            $arr['up_num'] = $quotation[8] - $quotation[10];//涨跌幅
            if (floatval($quotation[10])) {
                $arr['up_ratio'] = ($quotation[8] - $quotation[10]) / $quotation[10] * 100;//涨跌幅
            } else {
                $arr['up_ratio'] = '--';
            }
            $arr['up_stop'] = round(($quotation[5] * (1 + 0.1)), 4);//涨停
            $arr['down_stop'] = $quotation[5] * (1 - 0.1);//跌停
            $arr['exchange'] = $code;
        } else {
            $arr['bid1_price'] = '--';
            $arr['bid1_volume'] = '--';
            $arr['ask1_price'] = '--';
            $arr['ask1_volume'] = '--';
            $arr['open'] = floatval($quotation[0]) == 0 ? '--' : $quotation[0];
            $arr['high'] = floatval($quotation[1]) == 0 ? '--' : $quotation[1];
            $arr['low'] = floatval($quotation[2]) == 0 ? '--' : $quotation[2];
            $arr['close'] = floatval($quotation[3]) == 0 ? '--' : $quotation[3];
            $arr['p_close'] = floatval($quotation[4]) == 0 ? '--' : $quotation[4];
            $arr['p_clear'] = '--';
            $arr['clear'] = '--';
            $arr['volume'] = floatval($quotation[13]) == 0 ? '--' : $quotation[13];
            $arr['turnover'] = floatval($quotation[14]) == 0 ? '--' : $quotation[14];
            $arr['dateTime'] = $quotation[37];
            $arr['up_num'] = $quotation[3] - $quotation[14];
            $arr['up_ratio'] = '--';
            $arr['exchange'] = $code;
        }
        return $arr;
    }

    private function null_data($code)
    {
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
        $arr['exchange'] = $code;
        return $arr;
    }

    /**
     * 合并信息
     * @param $contract array 合约信息
     * @return string
     */
    private function merge_short($contract)
    {
        $stocks = array();
        foreach ($contract as $key => $value) {
            if (!in_array(trim($value['short']), $stocks)) {
                array_push($stocks, trim($value['short']));
            }
        }
        return implode(",", $stocks);
    }

    /**
     * 分配行情
     * @param $list array  全部行情
     * @param $short string 代码信息
     * @return array
     */
    private function list_data($list, $short)
    {
        $data = array();
        foreach ($list as $key => $value) {
            if ($value[0] == $short) {
                $data = $value;
            }
        }
        return $data;
    }

    /**
     * 查询合约信息
     * @param $codes string
     * @return array
     */
    private function contracts_real($codes)
    {
        $contents = do_get('https://hq.sinajs.cn/?list=' . $codes);
        $list = explode(';', $contents);
        $arr = array();
        foreach ($list as $key => $value) {
            if (trim($value)) {
                $value = str_replace(array("var hq_str_", "\""), "", $value);
                $value = str_replace(array("= \""), ",", $value);
                $arr[$key] = explode(',', trim($value));
            }
        };
        foreach ($arr as $key => $value) {
            foreach ($value as $k => $v) {
                $value[$k] = trim(iconv('GBK', 'UTF-8', $v));
            }
            $arr[$key] = $value;
        }
        return $arr;
    }
}