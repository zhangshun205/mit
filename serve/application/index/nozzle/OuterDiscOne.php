<?php

namespace app\index\nozzle;

use app\index\model\Quotation;
use think\Controller;
use think\Db;
use think\Request;

class OuterDiscOne extends Controller
{
    protected $Quotation;
    protected $PriceMinute;
    protected $url = 'http://dt.jctytech.com/stock.php';
    protected $merchant = 'lairui888';

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Quotation = new Quotation();
    }
    //名称	类型	必须	描述
    //u	String	是	账号
    //type	String	是	类型（stock,kline,trend,trade）
    //sign	String	否	签名
    //stamp	Integer	否	时间戳
    //提示：在没有开启安全模式的情况下可以不用使用签名
    //签名算法：md5sign=MD5(StringA)，StringA="u=username&p=password&stamp=timestamp"。
    //算法示例：md5sign=MD5("u=test&p=test&stamp=1511267818")，md5sign全部为小写。
    //请求示例：http://dt.jctytech.com/stock.php?u=test&sign=md5sign&stamp=timestamp。
    public function index()
    {
        $this->time_sharing_data();
//        Db::query("TRUNCATE TABLE sn_quotation");
//        $exchange = Db::name('exchange')->where(array('status' => 1))->select();
//        foreach ($exchange as $key => $value) {
//            $this->real_time_data($value['code'], $value['name']);
//        }
    }

    //获取板块数据
    public function plate_data()
    {
        $data['u'] = $this->merchant;
        $data['type'] = 'block';
        $data['ret'] = 'main';//返回板块数据类型：可使用的值包括：main,class,block,symbol
        $data['val'] = '';//指定板块数据类型相关参数
//limit	String	否	数据条数限制，最大200条。例:limit=50。使用偏移量:limit=50,50表示偏移量为50，取50条数据
    }

    //获取分笔明细数据
    public function minute_details()
    {
        $data['u'] = $this->merchant;
        $data['type'] = 'detail';
        $data['symbol'] = 'BSbtcusd';//	产品代码(BSbtcusd)，只能指定一个产品代码
        $data['column'] = '';//获取指定字段，逗号分割。例:column=Symbol,Name
        $data['date'] = day_time();//date查询时间点。例:date=1511267818
        $data['num'] = '50';//数据条数限制，最大200条。默认值：num=50
        $list = $this->send_request($data);
        //Symbol	String	产品代码
        //Date	Integer	时间戳
        //Name	String	产品名称
        //Price3	Float	股票为成交总笔数，期货是前一交易日结算价
        //Vol2	Float	现量，当前最近一笔成交量
        //Open_Int	Float	仅期货有效，持仓（未平仓合约）
        //Price2	Float	期货当日结算价（盘中为0，收盘后交易所才提供）
        //LastClose	Float	昨收价
        //Open	Float	开盘价
        //High	Float	最高价
        //Low	Float	最低价
        //NewPrice	Float	最新价
        //Volume	Float	成交量
        //Amount	Float	成交额
        //BP[5]	Float	申买价（数组）;字段名: BP1-BP5
        //BV[5]	Float	申买量（数组）;字段名: BV1-BV5
        //SP[5]	Float	申卖价（数组）;字段名: SP1-SP5
        //SV[5]	Float	申卖量（数组）;字段名: SV1-SV5
    }

    //获取分时数据
    public function time_sharing_data()
    {
        Db::query("TRUNCATE TABLE sn_time_sharing");
        $data['u'] = $this->merchant;
        $data['type'] = 'trend';
        $data['symbol'] = 'HIHSIF';//	产品代码(BSbtcusd)，只能指定一个产品代码
        $data['date'] = day_time();//指定日期的分时数据。例:date=1511193600
        $list = $this->send_request($data);
        $insert = array();
        foreach ($list['Data'] as $key => $value) {
            $value = $this->value_data($value);
            $value['lastclose'] = $list['LastClose'];
            array_push($insert, $value);
        }
        if ($insert) {
            Db::name('time_sharing')->insertAll($insert);
        }
        print_r($list);
        exit();
    }

    public function k_line_data()
    {
        Db::query("TRUNCATE TABLE sn_price_minute");
        $data['u'] = $this->merchant;
        $data['symbol'] = 'HIHSIF';
        $data['type'] = 'kline';
//      $data['st'] = '';//date起始时间。例:st=1511267818
//      $data['et'] = '';//date结束时间。例:et=1511267818
        $data['line'] = 'day';//K线类型。例:line=day 返回日线（min分钟线，只包含[1,5,10,15,30,60,120]分钟线）。line=min,5 返回5分钟K线.
        $data['num'] = 2000;
//      $data['sort'] = 'Date desc';//指定字段排序。例:sort=Date%20desc，desc逆序，asc顺序。
        $list = $this->send_request($data);
        $insert = array();
        foreach ($list as $key => $value) {
            $value = $this->value_data($value);
            array_push($insert, $value);
        }
        if ($insert) {
            Db::name('price_minute')->insertAll($insert);
        }
        exit();
    }

    //实时行情
    public function real_time_data($code, $exchange)
    {
        $data['u'] = $this->merchant;
        $data['type'] = 'stock';
//      $data['symbol'] = '';//指定产品代码(BSbtcusd)，多个用逗号分割，最大100个
        $data['market'] = $code;//指定市场如：(market=BS)，多个用逗号分割，和symbol参数同用无效'
        $data['limit'] = '0,200';//指定市场如：(market=BS)，多个用逗号分割，和symbol参数同用无效'
        $list = $this->send_request($data);
        $update = $insert = array();
        $contract = Db::name('quotation')->select();
        foreach ($list as $key => $value) {
            $value = $this->value_data($value);
            $res = $this->query_contract($value, $contract);
            if ($res) {
                $value['id'] = $res['id'];
                array_push($update, $value);
            } else {
                $value['code'] = $code;
                $value['exchange'] = $exchange;
                array_push($insert, $value);
            }
        }
        if ($update) {
            $this->Quotation->saveAll($update);
        }
        if ($insert) {
            $insert = list_sort_by($insert, 'symbol', 'ASC');
            $this->Quotation->insertAll($insert);
        }
    }

    /**
     * 数据处理
     * @param $list mixed
     * @return array
     */
    private function value_data($list)
    {
        $data = array();
        foreach ($list as $key => $value) {
            $data[strtolower($key)] = $value;
        }
        $data['time'] = time();
        return $data;
    }

    /**
     * @param $data array 数据信息
     * @param $contract mixed 合约信息
     * @return int
     */
    private function query_contract($data, $contract)
    {
        $res = 0;
        foreach ($contract as $key => $value) {
            if ($data['symbol'] == $value['symbol'] && $data['name'] == $value['name']) {
                $res = $value;
                break;
            }
        }
        return $res;
    }

    public function send_request($data)
    {
        $url = $this->url . '?' . http_build_query($data, '', '&');
        $req = $this->sendRequest($url, [], 'GET', []);
        $data = $req['ret'] ? $req['msg'] : '';
        $data = gzdecode($data);
        $list = json_decode($data, true);
        return $list;
    }

    /**
     * CURL发送Request请求,含POST和REQUEST
     * @param string $url 请求的链接
     * @param mixed $params 传递的参数
     * @param string $method 请求的方法
     * @param mixed $options CURL的参数
     * @return array
     */
    private function sendRequest($url, $params = [], $method = 'POST', $options = [])
    {
        $method = strtoupper($method);
        $protocol = substr($url, 0, 5);
        $query_string = is_array($params) ? http_build_query($params) : $params;

        $ch = curl_init();
        $defaults = [];
        if ('GET' == $method) {
            $geturl = $query_string ? $url . (stripos($url, "?") !== FALSE ? "&" : "?") . $query_string : $url;
            $defaults[CURLOPT_URL] = $geturl;
        } else {
            $defaults[CURLOPT_URL] = $url;
            if ($method == 'POST') {
                $defaults[CURLOPT_POST] = 1;
            } else {
                $defaults[CURLOPT_CUSTOMREQUEST] = $method;
            }
            $defaults[CURLOPT_POSTFIELDS] = $query_string;
        }

        $defaults[CURLOPT_HEADER] = FALSE;
        $defaults[CURLOPT_USERAGENT] = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.98 Safari/537.36";
        $defaults[CURLOPT_FOLLOWLOCATION] = TRUE;
        $defaults[CURLOPT_RETURNTRANSFER] = TRUE;
        $defaults[CURLOPT_CONNECTTIMEOUT] = 10;
        $defaults[CURLOPT_TIMEOUT] = 10;
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Expect:'));
        if ('https' == $protocol) {
            $defaults[CURLOPT_SSL_VERIFYPEER] = FALSE;
            $defaults[CURLOPT_SSL_VERIFYHOST] = FALSE;
        }
        curl_setopt_array($ch, (array)$options + $defaults);
        $ret = curl_exec($ch);
        $err = curl_error($ch);
        if (FALSE === $ret || !empty($err)) {
            $errno = curl_errno($ch);
            $info = curl_getinfo($ch);
            curl_close($ch);
            return ['ret' => FALSE, 'errno' => $errno, 'msg' => $err, 'info' => $info,];
        }
        curl_close($ch);
        return ['ret' => TRUE, 'msg' => $ret,];
    }

}