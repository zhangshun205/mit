<?php

namespace app\index\quotation;

use app\index\model\Quotation;
use think\Controller;
use think\Request;

class AutoPrice extends Controller
{
    protected $address = '47.110.136.149';
    protected $port = 80;
    private $Quotation;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Quotation = new Quotation();
    }

    /**
     * 实时全部合约信息价格
     */
    public function index()
    {
        $contract = $this->Quotation->select();
        $list = array('IF', 'NX', 'CX');
        foreach ($list as $key => $value) {
            $this->data_handle($value, $contract);
        }
    }

    private function data_handle($code, $contract)
    {
        $list = do_get('http://' . $this->address . ':' . $this->port . '/quoteList?exchCode=' . trim($code));
        $list = json_decode($list, true);
        $update = $insert = array();
        foreach ($list as $key => $value) {
            $res = $this->query_contract($value, $contract);
            if ($res) {
                $map['id'] = $res['id'];
                $map = $this->Quotation->update_data($res, $value);
                array_push($update, $map);
            } else {
                $map = $this->Quotation->add_data($value, $code);
                array_push($insert, $map);
            }
        }
        if ($update) {
            $this->Quotation->saveAll($update);
        }
        if ($insert) {
            $insert = list_sort_by($insert, 'short', 'ASC');
            $this->Quotation->insertAll($insert);
        }
    }

    /**
     * 查询价格
     * @param $data array
     * @param $contract
     * @return int
     */
    private function query_contract($data, $contract)
    {
        $res = 0;
        foreach ($contract as $key => $value) {
            if ($data['symbol'] == $value['code'] && $data['name'] == $value['short']) {
                $res = $value;
                break;
            }
        }
        return $res;
    }
}