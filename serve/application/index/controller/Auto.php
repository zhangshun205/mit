<?php

namespace app\index\controller;

use app\index\auto\AutoClose;
use app\index\auto\AutoEntrust;
use app\index\auto\AutoRenew;
use app\index\model\CoreSet;
use app\index\model\PriceMinute;
use app\index\quotation\AutoPrice;
use think\Controller;
use think\Db;
use think\Debug;
use think\Request;

class Auto extends Controller
{
    private $AutoRenew;
    private $AutoEntrust;
    private $AutoClose;
    private $CoreSet;
    private $PriceMinute;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->AutoRenew = new AutoRenew();
        $this->AutoEntrust = new AutoEntrust();
        $this->AutoClose = new AutoClose();
        $this->CoreSet = new CoreSet();
        $this->PriceMinute = new PriceMinute();
    }

    public function index()
    {
        ignore_user_abort(true);//忽略用户中止
        set_time_limit(0);//并允许脚本永远运行
        $this->AutoEntrust->index();
        $s = rand(3, 5);
        for ($i = 59; $i > 0; $i = $i - $s) {
            ob_flush();
            flush();
            sleep($s);
        }
    }

    /**
     * 价格设置
     */
    public function price_info()
    {
        ignore_user_abort(true);//忽略用户中止
        set_time_limit(0);//并允许脚本永远运行
        for ($i = 59; $i > 0; $i = $i - 1) {
            $this->price_info_data();
            ob_flush();
            flush();
            sleep(1);
        }
    }

    private function price_info_data()
    {
        $AutoPrice = new AutoPrice();
        $AutoPrice->index();
        $list = Db::name('quotation')->select();
        if ($list) {
            $update = $insert = array();
            $minute = strtotime(date('YmdHi'));
            $minute_array = Db::name('price_minute')->where(array('time' => $minute))->select();
            foreach ($list as $key => $value) {
                if ($value['time'] > $minute) {
                    $data = $this->add_log($this->screen_contract($minute_array, $value['short']), $value, $value['close'], $value['volume'], $value['turnover'], $update, $insert);
                    $update = $data['update'];
                    $insert = $data['insert'];
                }
            }
            if ($update) {
                $this->PriceMinute->saveAll($update);
            }
            if ($insert) {
                $this->PriceMinute->insertAll($insert);
            }
        }
    }

    /**
     * 筛选合约
     * @param $list
     * @param $short
     * @return array
     */
    private function screen_contract($list, $short)
    {
        $data = array();
        foreach ($list as $key => $value) {
            if ($value['short'] == $short) {
                $data = $value;
                break;
            }
        }
        return $data;
    }

    /**
     * @param $list
     * @param $contract
     * @param $price float 价格
     * @param $number float 交易数量
     * @param $turnover float 持仓数量
     * @param $update
     * @param $insert
     * @return array
     */
    private function add_log($list, $contract, $price, $number, $turnover, $update, $insert)
    {
        if ($list) {
            $map['id'] = $list['id'];
            $map['close'] = $price;
            $map['highest'] = $list['highest'] < $price ? $price : $list['highest'];
            $map['lowest'] = $list['lowest'] > $price ? $price : $list['lowest'];
            $map['volume'] = $number;
            $map['turnover'] = $turnover;
            array_push($update, $map);
        } else {
            $map['code'] = $contract['code'];
            $map['short'] = $contract['short'];
            $map['name'] = $contract['name'];
            $map['open'] = $price;
            $map['close'] = $price;
            $map['highest'] = $price;
            $map['lowest'] = $price;
            $map['volume'] = $number;
            $map['turnover'] = $turnover;
            $map['time'] = strtotime(date('YmdHi'));
            array_push($insert, $map);
        }
        return array('insert' => $insert, 'update' => $update);
    }

    /**
     * 查询当前文件中的最新
     * @param $file string
     * @return false|int|string
     */
    public function new_time($file)
    {
        $new_time = 0;
        if (file_exists($file)) {
            $list = file_last_lines($file, 1);
            $new_list = $list[0];
            if ($new_list) {
                $new_list = explode(',', $new_list);
//              $new_time = $new_list[0] . $new_list[1];
//              $new_time = strtotime($new_time);
            }
        }
        return $new_list;
    }

    public function dir($path)
    {
        //遍历目录第一层
        $handle = opendir($path);    //打开目录
        while (($item = readdir($handle)) !== false) {
            //循环遍历目录
            if ($item != '.' && $item != '..') {
                if (is_file($path . "/" . $item)) {
                    $arr ['file'] [] = $item;
                }
                if (is_dir($path . "/" . $item)) {
                    $arr ['dir'] [] = $item;
                }
            }
        }
        closedir($handle);
        return $arr;
    }

    /**
     * 事件处理
     * @param $string
     * @return array
     */
    public function time_data($string)
    {
        $minute = date('i');
        switch ($string) {
            case '001':
                $name = 'minute';
                $minute = strtotime(date('YmdHi'));
                $minute = strtotime(date('YmdHi')) - floatval($minute) % 5 * 60;
                break;
            case '005':
                $name = 'five';
                $minute = strtotime(date('YmdHi')) - floatval($minute) % 5 * 60;
                break;
            case '015':
                $name = 'fifteen';
                $minute = strtotime(date('YmdHi')) - floatval($minute) % 15 * 60;
                break;
            case '030':
                $name = 'thirty';
                $minute = strtotime(date('YmdHi')) - floatval($minute) % 30 * 60;
                break;
            case '060':
                $name = 'sixty';
                $minute = strtotime(date('YmdHi')) - floatval($minute) % 60 * 60;
                break;
            case '100':
                $name = 'day';
                $minute = strtotime(date('Ymd'));
                break;
            case '200':
                $name = 'week';
                $minute = strtotime(date("Y-m-d H:i:s", mktime(23, 59, 59, date("m"), date("d") - date("w") + 7 - 7, date("Y"))));
                break;
            case '300':
                $name = 'month';
                $minute = strtotime(date("Y-m-d H:i:s", mktime(23, 59, 59, date("m"), 0, date("Y"))));
                break;
            default:
                $name = '';
                $minute = '';
                break;
        }
        return array('minute' => $minute, 'name' => $name);
    }

    /**
     * 处理复制数据
     */
    private function query_data()
    {
        $list_array = $this->dir('data');
//      foreach ($list['dir'] as $key => $value) {
//      $list_array = $this->dir('data/' . $value);
        $list = array('day', 'fifteen', 'five', 'thirty', 'sixty', 'minute', 'week', 'month');
        foreach ($list as $key => $value) {
            $dir = iconv("UTF-8", "GBK", "data/" . $value);
            if (!file_exists($dir)) {
                mkdir($dir, 0777, true);
            }
            $str_s = $value;
            foreach ($list_array['file'] as $k => $v) {
                $file = 'data/' . $v;
                $path = pathinfo($file);
                $basename = $path['basename'];
                $basename = str_replace('.csv', "", $basename);
                $str = substr($basename, -strlen($str_s), strlen($str_s));
                if ($str == $str_s) {
                    $basename = str_replace($str_s, "", $basename);
                    $name = strtoupper($str_s) . '_' . $basename;
                    $new_name = $path['dirname'] . '/' . $name . '.' . $path['extension'];
                    echo "替换成:" . $name . '.' . $path['extension'] . "\r\n";
                    rename($file, $new_name);
                }
            }
        }
    }
}




