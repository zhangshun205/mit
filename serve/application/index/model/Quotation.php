<?php

namespace app\index\model;

use think\Model;

class Quotation extends Model
{
    protected $table = 'sn_quotation';

    /**
     * 合约处理
     * @param $data array 数据信息
     * @param $exchange string
     * @return mixed
     */
    public function add_data($data, $exchange)
    {
        $map['code'] = $data['symbol'];
        $map['short'] = $data['name'];
        $map['name'] = contract_name($data['name'], $data['symbol']);
        $map['open'] = $data['open'];
        $map['high'] = $data['high'];
        $map['low'] = $data['low'];
        $map['close'] = $data['close'];
        $map['pClose'] = $data['pClose'];
        $map['volume'] = $data['volume'];
        $map['turnover'] = $data['turnover'];
        $map['bid1Price'] = $data['bid1Price'];
        $map['bid1Volume'] = $data['bid1Volume'];
        $map['ask1Price'] = $data['ask1Price'];
        $map['ask1Volume'] = $data['ask1Volume'];
        $map['dateTime'] = $data['dateTime'];
        $map['exchange'] = $exchange;
        $map['time'] = time();
        return $map;
    }

    /**
     * 更新行情
     * @param $list mixed 老数据
     * @param $data array 新数据
     * @return mixed
     */
    public function update_data($list, $data)
    {
        $map['id'] = $list['id'];
        if ($data['symbol'] != $list['code']) {
            $map['code'] = $data['symbol'];
        }
        if ($data['name'] != $list['short']) {
            $map['short'] = $data['name'];
        }
        if ($data['name'] != contract_name($data['name'], $data['symbol'])) {
            $map['name'] = contract_name($data['name'], $data['symbol']);
        }
        $map['open'] = $data['open'];
        $map['high'] = $data['high'];
        $map['low'] = $data['low'];
        $map['close'] = $data['close'];
        $map['pClose'] = $data['pClose'];
        $map['volume'] = $data['volume'];
        $map['turnover'] = $data['turnover'];
        $map['bid1Price'] = $data['bid1Price'];
        $map['bid1Volume'] = $data['bid1Volume'];
        $map['ask1Price'] = $data['ask1Price'];
        $map['ask1Volume'] = $data['ask1Volume'];
        $map['dateTime'] = $data['dateTime'];
        $map['time'] = time();
        return $map;
    }

    /**
     * 查询合约
     * @param $data
     * @return array|false|\PDOStatement|string|Model
     */
    public function query_contract($data)
    {
        $map['short'] = $data['symbol'];
        $map['name'] = $data['name'];
        return $this->where($map)->find();
    }
}

