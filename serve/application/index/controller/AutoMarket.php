<?php

namespace app\index\controller;

use app\index\model\Contract;
use app\index\nozzle\OuterDisc;
use think\Controller;
use think\Debug;
use think\Request;

class AutoMarket extends Controller
{
    private $Contract;
    private $OuterDisc;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->OuterDisc = new OuterDisc();
        $this->Contract = new Contract();
    }

    /**
     * 获取分时数据和实时数据
     * @param array $data
     * @return array
     */
    public function time_sharing($data = array())
    {
        $code = empty($data['code']) ? 'CONJ' : $data['code'];
        $map['short|code|name'] = $code;
        $contract = $this->Contract->where($map)->find();
        $short = $contract['short'];
//        Debug::remark('begin');
        $list['data'] = $this->OuterDisc->market_details($short);
        $list['tick'] = $this->OuterDisc->trade_tick($short);
        $time_sharing = $this->OuterDisc->time_sharing($short);
        $list['time'] = $time_sharing['list_data'];
        $list['trade_time'] = $time_sharing['arr']['time'];
//        Debug::remark('end');
//        echo Debug::getRangeTime('begin','end').'s';
        return msg_handle('', 1, $list);
    }

    /**
     * 获取K线数据和实时数据
     * @param array $data
     * @return array
     */
    public function kline_sharing($data = array())
    {
        $code = empty($data['code']) ? 'CONJ' : $data['code'];
        $period = empty($data['period']) ? '001' : $data['period'];
        $map['short|code|name'] = $code;
        $contract = $this->Contract->where($map)->find();
        $short = $contract['short'];
//        Debug::remark('begin');
        $list['data'] = $this->OuterDisc->market_details($short);
        $list['tick'] = $this->OuterDisc->trade_tick($short);
        $list['line'] = $this->OuterDisc->kline_sharing($short, $period);
//        Debug::remark('end');
//        echo Debug::getRangeTime('begin', 'end') . 's';
        return msg_handle('', 1, $list);
    }
}