<?php

namespace app\index\controller;

use app\index\model\Contract;
use app\index\model\ExchangeRate;
use app\index\model\Futures;
use think\Controller;
use think\Request;

class Contracts extends Controller
{
    private $Futures;
    private $Contract;
    private $ExchangeRate;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Futures = new Futures();
        $this->Contract = new Contract();
        $this->ExchangeRate = new ExchangeRate();
    }

    public function single_futures()
    {
        $list = $this->Futures->relation(array('exchangeRate'))->select()->toArray();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['futures_code'] = $value['code'];//合约名
            $data[$key]['futures_name'] = $value['name'];//合约名称
            $data[$key]['is_single'] = 1;//是否大单
            $data[$key]['currency'] = $value['exchangeRate']['code'];
        }
        return msg_handle('', 1, $data);
    }

    public function trade_contract()
    {
        $list = $this->Contract->relation(array('futures', 'exchange'))->where(array('trade' => 1))->select();
        $data = array();
        foreach ($list as $key => $value) {
            $data[$key]['contract_code'] = $value['code'];//合约名
            $data[$key]['contract_name'] = $value['name'];//合约名称
            $data[$key]['contract_unit'] = $value['futures']['unit'];//合约单位
            $data[$key]['contract_unit'] = $value['futures']['unit'];//合约单位
            $data[$key]['future_value'] = $value['futures']['value'];//每手乘以
            $data[$key]['future_price'] = $value['futures']['price'];//价格精度
            $data[$key]['currency'] = $this->ExchangeRate->where(array('id' => $value['futures']['currency']))->value('code');//价格精度
        }
        return msg_handle('', 1, $data);
    }

}