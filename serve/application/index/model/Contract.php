<?php

namespace app\index\model;

use think\Model;

class Contract extends Model
{
    protected $table = 'sn_contract';

    public function futures()
    {
        return $this->belongsTo('Futures', 'futures', 'id');
    }

     public function exchange()
    {
        return $this->belongsTo('Exchange', 'bourse', 'id');
    }


    /**
     * 查询合约
     * @param $map array 条件
     * @return array
     */
    public function query_log($map)
    {
        $map['status'] = 1;
        $contract = $this->relation(array('futures', 'exchange'))->where($map)->select();
        $data = array();
        foreach ($contract as $key => $value) {
            $data[$key]['exchange'] = $value['exchange']['code'];
            $data[$key]['future'] = $value['futures']['name'];//品种名
            $data[$key]['future_code'] = $value['futures']['code'];//品种
            $data[$key]['future_price'] = $value['futures']['price'];//价格精度
            $data[$key]['future_wave_spot'] = $value['futures']['wave_spot'];//最小波动价位
            $data[$key]['future_value'] = $value['futures']['value'];//每手乘以
            $data[$key]['future_unit'] = $value['futures']['unit'];//品种单位
            $data[$key]['contract_name'] = $value['name'];//合约名称
            $data[$key]['contract_short'] = $value['short'];//合约名称
            $data[$key]['contract_code'] = $value['code'];//合约名称
            $data[$key]['current_price'] = '--';//当前价
            $data[$key]['current_number'] = '--';//现手
            $data[$key]['bid1_price'] = '--';
            $data[$key]['bid1_volume'] = '--';
            $data[$key]['ask1_price'] = '--';
            $data[$key]['ask1_volume'] = '--';
            $data[$key]['volume'] = '--';//成交量
            $data[$key]['up_num'] = '--';//涨跌额
            $data[$key]['up_ratio'] = '--';//涨跌幅
            $data[$key]['turnover'] = '--';//持仓量
            $data[$key]['dateTime'] = '--';//时间
            $data[$key]['open_price'] = '--';//开盘价
            $data[$key]['high_price'] = '--';//最高价
            $data[$key]['low_price'] = '--';//最低价
            $data[$key]['p_close'] = '--';//昨收价
            $data[$key]['clear'] = '--';//结算价
            $data[$key]['p_clear'] = '--';//昨结算价
            $data[$key]['end_time'] = date('Y-m-d', $value['end_time']);//最后交易日
        }
        return $data;
    }

    /**
     * 验证合约是否存在
     * @param $map array 条件
     * @return int
     */
    public function validate_stock($map)
    {
        $map['status'] = 1;
        return $this->where($map)->find() ? 1 : 0;
    }

    /**
     * 增加合约
     * @param $list array 合约信息
     * @param $year string 年
     * @param $month string 月
     * @return mixed
     */
    public function add_log($list, $year, $month)
    {
        $map['short'] = 'nf_' . $list['code'] . $year . sprintf("%02d", $month);
        $map['code'] = $list['code'] . $year . sprintf("%02d", $month);
        $map['name'] = $list['short'] . $year . sprintf("%02d", $month);
        $map['type'] = 0;
        $map['trade'] = 1;
        $map['futures'] = $list['id'];
        $map['bourse'] = $list['bourse'];
        return $map;
    }
}