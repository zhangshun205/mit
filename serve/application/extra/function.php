<?php
define('REG_PASSWORD', '/^[0-9A-Za-z]{6,12}$/');
define('REG_NUMBER', '/^(?![^a-zA-Z]+$)(?!\D+$).{6,12}$/');
define('REG_PHONE', '/^1[3|4|5|8|7|6|9][0-9]\d{8}$/');
define('REG_QQ', '/^[1-9][0-9]{4,9}$/');
define('REG_EMAIL', '/^[a-zA-Z0-9][a-zA-Z0-9._-]*\@[a-zA-Z0-9]+\.[a-zA-Z0-9\.]+$/A');
define("REG_CARD", '/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/');
define("REG_BANKCARD", '/^(\d{16}|\d{19})$/');
define('REG_NAME', '/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$/');
define('REG_NAME_CHAIN', '/^[\u4e00-\u9fa5]{4,10}|[0-9A-Za-z]{6,12}$/');
define('CHINESE_NAME', '/[\x80-\xff]{6,30}/');
define('POSITIVE_INTEGER', '/^[1-9]\d*$/');
function admin_url()
{
    return 'http://' . $_SERVER['HTTP_HOST'];
}

/**
 * 信息处理
 * @param $msg  string 提示内容
 * @param $code string 状态码
 * @param $data array 内容
 * @return array
 */
function msg_handle($msg, $code, $data = array())
{
    return array('msg' => $msg, 'code' => $code, 'data' => $data);
}

/**
 * 当日时间
 * @return false|int
 */
function day_time()
{
    return strtotime(date('Ymd', time()));
}

/**保留小数位
 * @param $number float 数量
 * @param $digit int 位数
 * @return string
 */
function priceFill($number, $digit)
{
    return sprintf("%01." . $digit . "f", $number);
}

/**
 * 保留两位小数
 * @param $num float 数字
 * @return string
 */
function num_data($num)
{
    return sprintf("%.2f", $num);
}

/**
 * 随机单号
 * @param $id int 用户id
 * @return string
 */
function rand_order($id)
{
    $number = time() . str_shuffle(sprintf('%05d', $id));
    $number = str_shuffle($number);
    $order = substr($number, rand(0, strlen($number) - 5), 5) . '-' . substr($number, rand(0, strlen($number) - 5), 5);
    return $order;
}

/**
 * 创建TOKEN
 * @return string
 */
function createToken()
{
    $code = chr(mt_rand(0xB0, 0xF7)) . chr(mt_rand(0xA1, 0xFE)) . chr(mt_rand(0xB0, 0xF7)) . chr(mt_rand(0xA1, 0xFE)) . chr(mt_rand(0xB0, 0xF7)) . chr(mt_rand(0xA1, 0xFE));
    $token = authCode($code);
    session('token', $token);
    return $token;
}

/**
 * 加密TOKEN
 * @param $str  string token
 * @return string
 */
function authCode($str)
{
    $key = "andiamon";
    $str = substr(md5($str), 8, 10);
    return md5($key . $str);
}

/**
 * 判断TOKEN
 * @param $token string 信息
 * @return bool
 */
function checkToken($token)
{
    if ($token == session('token')) {
        return true;
    } else {
        return false;
    }
}

/**
 * 手机号码处理
 * @param $phone string 手机号码
 * @return string
 */
function phone_handling($phone)
{
    return substr($phone, 0, 3) . '****' . substr($phone, 7);
}


/**
 * 详细时间
 * @param $time
 * @return false|string
 */
function detail_time($time)
{
    return date("Y-m-d H:i:s", $time);
}

/**
 * 省略时间
 * @param $time
 * @return false|string
 */
function omit_time($time)
{
    return date("Y-m-d", $time);
}

/**
 * 日期处理
 * @param $start int 开始时间
 * @param $end int 结束时间
 * @return array
 */
function dateQuery($start, $end)
{
    if ($start && $end) {
        $end = $end + 24 * 60 * 60;
        $map = array(array('egt', $start), array('elt', $end));
    } else if (empty($start) && $end) {
        $end = $end + 24 * 60 * 60;
        $map = array('elt', $end);
    } else if ($start && empty($end)) {
        $map = array('egt', $start);
    } else {
        $map = array();
    }
    return $map;
}