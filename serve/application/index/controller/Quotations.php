<?php

namespace app\index\controller;

use app\index\model\Contract;
use app\index\model\Exchange;
use app\index\model\Futures;
use app\index\model\Quotation;
use app\index\quotation\AutoPrice;
use think\Controller;
use think\Request;

class Quotations extends Controller
{
    private $Exchange;
    private $Futures;
    private $Contract;
    private $Quotation;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Exchange = new Exchange();
        $this->Futures = new Futures();
        $this->Contract = new Contract();
        $this->Quotation = new Quotation();
    }

    public function query_exchange()
    {
        $list = $this->Exchange->query_log(array());
        return msg_handle('', 1, $list);
    }

    /**
     * 查询合约
     * @param $data array 数据处理
     * @return array
     */
    public function query_contract($data)
    {
        $codes = empty($data['code']) ? array() : json_decode($data['code'], true);
        $map['short|code|name'] = array('in', $codes);
        $contract = $this->Contract->query_log($map);
        $contract = $this->contract_data($contract, 1);
        return msg_handle('', 1, $contract);
    }

    /**
     * 查询首页
     * @param array $data
     * @return array
     */
    public function query_home($data = array())
    {
        $type = empty($data['type']) ? 0 : $data['type'];
        $exchange_id = empty($data['exchange_id']) ? '' : $data['exchange_id'];
        $AutoPrice = new AutoPrice();
        $AutoPrice->index();
        $exchange_ids = array();
        if ($type == 0) {
            $exchange = $this->Exchange->query_log(array());
        } else {
            $exchange = $this->Exchange->query_log(array('in', array($exchange_id)));
        }
        foreach ($exchange as $key => $value) {
            array_push($exchange_ids, $value['id']);
        }
        $contract = $this->Contract->query_log(array('bourse' => array('in', $exchange_ids)));
        $data_array['exchange'] = $exchange;
        $data_array['contract'] = $this->contract_data($contract, $type);
        return msg_handle('', 1, $data_array);
    }

    /**
     * 合约信息处理
     * @param $contract array
     * @param $type int 类型
     * @return array
     */
    private function contract_data($contract, $type)
    {
        $AutoPrice = new AutoPrice();
        $AutoPrice->index();
        $quotation = $this->Quotation->select()->toArray();
        foreach ($contract as $key => $value) {
            $array = $this->screen_contract($value, $quotation);
            if ($array) {
                $value['current_price'] = $array['close'];
                $value['current_number'] = '--';
                $value['bid1_price'] = $array['bid1Price'];
                $value['bid1_volume'] = $array['bid1Volume'];
                $value['ask1_price'] = $array['ask1Price'];
                $value['ask1_volume'] = $array['ask1Volume'];
                $value['volume'] = $array['volume'];
                $value['up_num'] = round(($array['close'] - $array['pClose']), 2);
                if (floatval($array['pClose'])) {
                    $value['up_ratio'] = round(($array['close'] - $array['pClose']) / $array['pClose'] * 100, 2);//涨跌幅
                } else {
                    $value['up_ratio'] = '--';
                }
                $value['turnover'] = $array['turnover'];
                $value['dateTime'] = date("H:i:s", strtotime($array['dateTime']));
                $value['open_price'] = $array['open'];
                $value['high_price'] = $array['high'];
                $value ['low_price'] = $array['low'];
                $value['p_close'] = $array['pClose'];
                $value['clear'] = '--';
                $value['p_clear'] = $array['pClose'];
                $contract[$key] = $value;
            }
        }
        if ($type == 0) {
            $contracts = array();
            foreach ($contract as $key => $value) {
                $contracts[$value['contract_code']][] = $value;
            }
            $contract_arrays = array();
            foreach ($contracts as $key => $value) {
                $contract_array = list_sort_by($value, 'volume', 'DESC');
                $contract_arrays[] = $contract_array[0];
            }
        } else {
            $contract_arrays = $contract;
        }
        return $contract_arrays;
    }

    /**
     * 筛选合约
     * @param $data
     * @param $contract
     * @return int
     */
    private function screen_contract($data, $contract)
    {
        $res = 0;
        foreach ($contract as $key => $value) {
            if ($data['contract_short'] == $value['code']) {
                $res = $value;
                break;
            }
        }
        return $res;
    }
}


















































