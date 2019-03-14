<?php

namespace app\index\controller;

use app\index\model\Contract;
use app\index\model\Exchange;
use app\index\model\FlowLog;
use app\index\model\SelfSelect;
use app\index\model\UserAccount;
use app\index\model\UserOrders;
use app\index\model\Variety;
use think\Controller;
use think\Request;

class Orders extends Controller
{
    private $UserOrders;
    private $Contracts;
    private $UserAccount;
    private $Contract;
    private $Variety;
    private $FlowLog;
    private $Exchange;
    private $SelfSelect;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->UserOrders = new UserOrders();
        $this->UserAccount = new UserAccount();
        $this->Contract = new Contract();
        $this->Variety = new Variety();
        $this->FlowLog = new FlowLog();
        $this->Exchange = new Exchange();
        $this->SelfSelect = new SelfSelect();
    }

    /**
     * 设置止盈止损
     * @param $id
     * @param $data
     * @return array
     */
    public function set_close($id, $data)
    {
        $order = $this->UserOrders->where(array("id" => $data["order_id"], "uid" => $id))->find();
        if (!isset($data["type_number"]) || !$data["type_number"]) {
            $data["type_number"] = 0;
        }
        if ($order) {
            $this->Contracts = new Contracts();
            $price_money = $this->Contracts->find_code_price(array("code" => $order["code"]));//当前实际价格
            $money = $price_money["data"]["price"];
            $is_sure = 0;
            if ($order["direction"] == 1) {//开仓买入
                if ($data["type"] == 2) {//止损设置
                    if ($data["number"] >= $money && $data["number"] > 0) {
                        $is_sure = 1;
                        $r = msg_handle("请输入正确的止损价格", 0);
                    }
                } else {//止盈设置
                    if ($data["number"] <= $money && $data["number"] > 0) {
                        $is_sure = 1;
                        $r = msg_handle("请输入正确的止盈价格", 0);
                    }
                }
            } else {//开仓卖出
                if ($data["type"] == 2) {//止损设置
                    if ($data["number"] <= $money && $data["number"] > 0) {
                        $is_sure = 1;
                        $r = msg_handle("请输入正确的止损价格", 0);
                    }
                } else {//止盈设置
                    if ($data["number"] >= $money && $data["number"] > 0) {
                        $is_sure = 1;
                        $r = msg_handle("请输入正确的止盈价格", 0);
                    }
                }
            }
            $cna_number = $order["number"] - $order["is_close_number"];
            if (floor($data["type_number"]) != $data["type_number"]) {
                $is_sure = 1;
                $r = msg_handle("请输入正确的数量", 0);
            } else if ($data["type_number"] > $cna_number) {
                $is_sure = 1;
                $r = msg_handle("请确认订单的可用数量", 0);
            }
            if ($is_sure < 1) {
                if ($data["type"] == 2) {//止损设置
                    $list = $this->UserOrders->where(array("id" => $order["id"]))->update(array("lose_close" => $data["number"], "lose_number" => $data["type_number"]));
                } else {//止盈设置
                    $list = $this->UserOrders->where(array("id" => $order["id"]))->update(array("profit_close" => $data["number"], "profit_number" => $data["type_number"]));
                }
                if ($list) {
                    $r = msg_handle("修改成功", 1);
                } else {
                    $r = msg_handle("修改失败", 0);
                }
            }
        } else {
            $r = msg_handle("请确认订单", 0);
        }
        return $r;
    }

    /*
   * 撤单操作
   * */
    public function revocation_order($id, $data)
    {
        $order = $this->UserOrders->where("id", $data["order_id"])->find();//订单信息
        $order["number"] = $order["number"] - $order["is_close_number"];
        $useraccounts = $this->UserAccount->where('uid', $id)->find();//用户账户信息
        $contract = $this->Contract->where('code', $order["code"])->find();//合约信息
        $variety = $this->Variety->where('id', $contract["variety_id"])->find();//品种信息
        if ($order) {
            $can_deal = 0;
            $one_begin_time = $variety["one_begin_time"] ? strtotime($variety["one_begin_time"]) : 0;
            $one_end_time = $variety["one_end_time"] ? strtotime($variety["one_end_time"]) : 0;
            $two_begin_time = $variety["two_begin_time"] ? strtotime($variety["two_begin_time"]) : 0;
            $two_end_time = $variety["two_end_time"] ? strtotime($variety["two_end_time"]) : 0;
            $three_begin_time = $variety["three_begin_time"] ? strtotime($variety["three_begin_time"]) : 0;
            $three_end_time = $variety["three_end_time"] ? strtotime($variety["three_end_time"]) : 0;
            if (time() >= $one_begin_time && time() <= $one_end_time) {
                $can_deal = 1;
            } else if (time() >= $two_begin_time && time() <= $two_end_time) {
                $can_deal = 1;
            } else if (time() >= $three_begin_time && time() <= $three_end_time) {
                $can_deal = 1;
            } else if ($one_begin_time < 1 && $one_end_time < 1 && $two_begin_time < 1 && $two_begin_time < 1 && $three_begin_time < 1 && $three_end_time < 1) {
                $can_deal = 1;
            }
            if ($can_deal < 1) {
                $r = msg_handle('合约不在交易时间', 0);
            } else if ($order["status"] > 0) {
                $r = msg_handle('该合约无法撤单', 0);
            } else {
                if ($order["type"] == 1) {//订单为平仓
                    $this->UserAccount->startTrans();
                    $fee = $variety["open_position_fee"] * $order["number"] / 2;//手续费
                    $u_account["account"] = $useraccounts["account"] + $fee;
                    $list = $this->UserAccount->where('uid', $id)->update($u_account);
                    $open_order = $this->UserOrders->where("id", $order["split_order_sn"])->find();//开仓订单信息
                    $two_order = array();
                    if ($open_order["is_close"] == 2) {
                        $two_order["is_close"] = 1;
                    }
                    $two_order["is_close_number"] = $open_order["is_close_number"] - $order["number"];
                    $two_list = $this->UserOrders->where("id", $open_order["id"])->update($two_order);
                    $three_list = $this->UserOrders->where("id", $order["id"])->update(array("status" => 1));
                    $four_list = $this->FlowLog->add_log($id, "撤单返还手续费", 4, $fee, 1, 0);
                    if ($list && $two_list && $three_list && $four_list) {
                        $this->UserAccount->commit();
                        $r = msg_handle('撤单成功', 1);
                    } else {
                        $this->UserAccount->rollback();
                        $r = msg_handle('操作失败,请重试', 0);
                    }
                } else {//订单为开仓
                    $this->UserAccount->startTrans();
                    $bond = $variety["bond"] * $order["number"];//保证金数量
                    $fee = $variety["open_position_fee"] * $order["number"] / 2;//手续费
                    $u_account["account"] = $useraccounts["account"] + $bond + $fee;
                    $u_account["frozen"] = $useraccounts["frozen"] - $bond;
                    $list = $this->UserAccount->where('uid', $id)->update($u_account);
                    $two_list = $this->FlowLog->add_log($id, "撤单返还保证金", 5, $bond, 1, 0);
                    $three_list = $this->UserOrders->where("id", $order["id"])->update(array("status" => 1));
                    $four_list = $this->FlowLog->add_log($id, "撤单返还手续费", 4, $fee, 1, 0);
                    if ($list && $two_list && $three_list && $four_list) {
                        $this->UserAccount->commit();
                        $r = msg_handle('撤单成功', 1);
                    } else {
                        $this->UserAccount->rollback();
                        $r = msg_handle('操作失败,请重试', 0);
                    }
                }
            }
        } else {
            $r = msg_handle("暂无数据", 0);
        }
        return $r;
    }

    /**
     * 用户合约信息(委托 可撤  成交)
     * @param $id
     * @param $data
     * @return array
     */
    public function order_accomplish($id, $data)
    {
        $inquire = $data["inquire"];
        if ($inquire == 1) {//可撤
            $find_order["status"] = 0;
        } else if ($inquire == 3) {//成交
            $find_order["status"] = 2;
        }
        $find_order["uid"] = $id;
        $contract = $this->UserOrders->where($find_order)->order('id desc')->limit(30)->select();
        $new_contract = array();
        if ($inquire == 1) {//可撤
            foreach ($contract as $k => $v) {
                $new_contracts = $this->Contract->where(array("code" => $v["code"]))->find();
                $new_contract[$k]["name"] = $new_contracts["name"];
                $new_contract[$k]["id"] = $v["id"];
                $new_contract[$k]["code"] = $v["code"];
                $new_contract[$k]["number"] = $v["number"];
                $new_contract[$k]["order_sn"] = $v["order_sn"];
                $new_contract[$k]["time"] = date("Y-m-d H:i:s", $v["time"]);
                $new_contract[$k]["is_close_number"] = $v["is_close_number"];
                if ($v["status"] == 1) {
                    $new_contract[$k]["status"] = "已撤单";
                } else if ($v["status"] == 2) {
                    $new_contract[$k]["status"] = "订单已完成";
                } else {
                    $new_contract[$k]["status"] = "未成交";
                }
                if ($v["direction"] == 1) {
                    $new_contract[$k]["direction"] = "买";
                } else {
                    $new_contract[$k]["direction"] = "卖";
                }
                if ($v["type"] == 1) {
                    $new_contract[$k]["price"] = sprintf("%." . $v["price_length"] . "f", $v["sell_price"]);
                    $new_contract[$k]["type"] = "平";
                } else {
                    $new_contract[$k]["price"] = sprintf("%." . $v["price_length"] . "f", $v["buy_price"]);
                    $new_contract[$k]["type"] = "开";
                }
            }
        } else if ($inquire == 2) {//委托
            foreach ($contract as $k => $v) {
                $new_contracts = $this->Contract->where(array("code" => $v["code"]))->find();
                $new_contract[$k]["name"] = $new_contracts["name"];
                $new_contract[$k]["id"] = $v["id"];
                $new_contract[$k]["code"] = $v["code"];
                $new_contract[$k]["number"] = $v["number"];
                $new_contract[$k]["order_sn"] = $v["order_sn"];
                $new_contract[$k]["time"] = date("Y-m-d H:i:s", $v["time"]);
                $new_contract[$k]["is_close_number"] = $v["is_close_number"];
                if ($v["direction"] == 1) {
                    $new_contract[$k]["direction"] = "买";
                } else {
                    $new_contract[$k]["direction"] = "卖";
                }
                if ($v["type"] == 1) {
                    $new_contract[$k]["price"] = sprintf("%." . $v["price_length"] . "f", $v["sell_price"]);
                    $new_contract[$k]["type"] = "平";
                } else {
                    $new_contract[$k]["price"] = sprintf("%." . $v["price_length"] . "f", $v["buy_price"]);
                    $new_contract[$k]["type"] = "开";
                }
                if ($v["status"] == 2) {
                    $new_contract[$k]["status"] = "成功";
                } else if ($v["status"] == 1) {
                    $new_contract[$k]["status"] = "已撤单";
                } else {
                    if ($v["is_close_number"] > 0) {
                        $new_contract[$k]["status"] = "部分成功";
                    } else {
                        $new_contract[$k]["status"] = "未成功";
                    }
                }
            }
        } else if ($inquire == 3) {//成交
            foreach ($contract as $k => $v) {
                $new_contracts = $this->Contract->where(array("code" => $v["code"]))->find();
                $new_contract[$k]["name"] = $new_contracts["name"];
                $new_contract[$k]["id"] = $v["id"];
                $new_contract[$k]["code"] = $v["code"];
                $new_contract[$k]["number"] = $v["number"];
                $new_contract[$k]["order_sn"] = $v["order_sn"];
                $new_contract[$k]["time"] = date("Y-m-d H:i:s", $v["time"]);
                $new_contract[$k]["is_close_number"] = $v["is_close_number"];
                if ($v["direction"] == 1) {
                    $new_contract[$k]["direction"] = "买";
                } else {
                    $new_contract[$k]["direction"] = "卖";
                }
                if ($v["type"] == 1) {
                    $new_contract[$k]["price"] = sprintf("%." . $v["price_length"] . "f", $v["sell_price"]);
                    $new_contract[$k]["type"] = "平";
                    $new_contract[$k]["time"] = date("Y-m-d H:i:s", $v["sell_time"]);
                } else {
                    $new_contract[$k]["price"] = sprintf("%." . $v["price_length"] . "f", $v["buy_price"]);
                    $new_contract[$k]["type"] = "开";
                    $new_contract[$k]["time"] = date("Y-m-d H:i:s", $v["buy_time"]);
                }
                if ($v["status"] == 2) {
                    $new_contract[$k]["status"] = "成功";
                } else {
                    if ($v["is_close_number"] > 0) {
                        $new_contract[$k]["status"] = "部分成功";
                    } else {
                        $new_contract[$k]["status"] = "未成功";
                    }
                }
            }
        }
        if ($new_contract) {
            $r = msg_handle("", 1, array("record" => $new_contract));
        } else {
            $r = msg_handle("", 1, array("record" => array()));
        }
        return $r;
    }

    /**
     * 判断合约是否是用户自选
     * @param $data
     * @return array
     */
    public function find_user_select($id, $data)
    {
        $code = $data["code"];
        $contract = $this->SelfSelect->where(array("uid" => $id, "code" => $code))->find();
        if ($contract) {
            $r = msg_handle('', 1, array("is_true" => 1));
        } else {
            $r = msg_handle('', 1, array("is_true" => 0));
        }
        return $r;
    }

    /**
     * 通过交易所查询所有合约
     * @param $data
     * @return array
     */
    public function select_variety($data)
    {
        $id = empty($data['exchange_id']) ? 1 : $data["exchange_id"];
        $exchange = $this->Exchange->where("id", $id)->find();
        $cacheName = $data["exchange_id"] . '_arts';
        $data = cache($cacheName);
        if ($exchange["id"] != 5 && $data) {
            $array = array();
            foreach ($data as $key => $value) {
                array_push($array, $value['Symbol']);
            }
            $contract = $this->Contract->where(array('code' => array('in', $array)))->field('code,is_display')->select();
            foreach ($data as $key => $value) {
                $list = screen_contract($contract, $value['Symbol']);
                $data[$key]['status'] = $list['is_display'] == 0 ? 0 : 1;
                $data[$key]["SP1"] = $value["BP1"];
                $data[$key]["BP1"] = $value["SP1"];
            }
            asort($data);
            $data = array_merge($data);
        }
        return msg_handle('', 1, $data);
    }

    /**
     * 用户自选查询
     * @param $id
     * @return array
     */
    public function select_user_variety($id)
    {
        $list = $this->SelfSelect->where(array("uid" => $id))->select();
        $new_list = array();
        foreach ($list as $k => $v) {
            $new_list[$k] = $this->Contract->where(array("code" => $v["code"]))->find();
        }
        $Futures = new Futures();
        $data = $Futures->find_contract($new_list);
        foreach ($data as $k => $v) {
            $data[$k]["is_true"] = 1;
        }
        $r = msg_handle('', 1, $data);
        return $r;
    }

    /**
     * 查找最近的历史订单
     * @param $data
     * @return array
     */
    public function find_history_order($data)
    {
        $order = $this->UserOrders->where(array("code" => $data["code"]))->order('id', 'desc')->limit(0, 5)->select();
        $list = array();
        if (count($order) >= 1) {
            foreach ($order as $k => $v) {
                $list[$k]["time"] = date("H:i:s", $v["time"]);
                $list[$k]["number"] = $v["number"];
                if ($v["type"] == 1) {
                    $list[$k]["price"] = $v["sell_price"];
                } else {
                    $list[$k]["price"] = $v["buy_price"];
                }
            }
        }
        $r = msg_handle("", 1, $list);
        return $r;
    }

    /**
     * 查询分时图
     * @param $data
     * @return array
     */
    public function find_time_line($data)
    {
        $code = $data["code"];
        $contract = $this->Contract->where(array("code" => $code))->find();
        $code = $contract["code"];
        $variety = $this->Variety->where(array("id" => $contract["variety_id"]))->find();
        $list = find_time_line($contract['code'], $variety);
        $r = msg_handle('', 1, $list);
        return $r;
        $count_time = array();
        $pClose = 0;
        $tradeTime = 0;
        $cacheName = $data["code"] . '_twoklines';
        if (cache($cacheName)) {
            $list = cache($cacheName);
        } else {
            if ($variety["exchange_id"] == 5) {//国内合约
                $code = substr(strrchr($code, "_"), 1);
                $str = 'https://stock2.finance.sina.com.cn/futures/api/jsonp.php/var%20t1NG=/InnerFuturesNewService.getMinLine?symbol=' . $code;
                $get_code = file_get_contents($str);
                if ($get_code != "null") {
                    $get_code = substr(strstr($get_code, "["), 0, strripos(strstr($get_code, "["), "]") + 1);
                    $get_code = substr($get_code, 1, -1);
                    $get_code = $get_code . ",";
                    $comma_separated = explode("[", $get_code);
                    $new_com = array();
                    $news = array();
                    foreach ($comma_separated as $k => $v) {
                        if (strlen($v) > 2) {
                            $comma_separated[$k] = substr($comma_separated[$k], 0, -2);
                            $comma_separated[$k] = str_replace('"', '', $comma_separated[$k]);
                            $comma_array = explode(",", $comma_separated[$k]);
                            if ($comma_array[1] > 1) {
                                foreach ($comma_array as $key => $val) {//res[i].Date), res[i].Open, res[i].High, res[i].Low, res[i].Close, res[i].Volume
                                    $news["Date"] = $comma_array[0];
                                    $news["Close"] = $comma_array[1];//收盘价
                                    $news["Volume"] = $comma_array[3];//成交量
                                    $news["turnover"] = 0;//持仓量
                                    $news["Open"] = 0;//开盘价
                                    $news["High"] = 0;//最高价
                                    $news["Low"] = 0;//最低价
                                }
                                $new_com[] = $news;
                            }
                        }
                    }
                } else {
                    $new_com = 0;
                }
                $num_count = 1;
                if ($variety["one_end_time"]) {
                    $end_time = $variety["one_end_time"];
                    $begin_time = $variety["one_begin_time"];
                    $sw_number = (strtotime($end_time) - strtotime($begin_time)) / 60;
                    $i = 1;
                    while ($i <= $sw_number) {
                        $num_count = $num_count + 1;
                        $count_time[]["Date"] = date("H:i", strtotime($begin_time) + 60 * $i);
                        $i++;
                    }
                }
                if ($variety["two_end_time"]) {
                    $end_time = $variety["two_end_time"];
                    $begin_time = $variety["two_begin_time"];
                    $sw_number = (strtotime($end_time) - strtotime($begin_time)) / 60;
                    $i = 1;
                    while ($i <= $sw_number) {
                        $num_count = $num_count + 1;
                        $count_time[]["Date"] = date("H:i", strtotime($begin_time) + 60 * $i);
                        $i++;
                    }
                }
                if ($variety["three_end_time"]) {
                    $begin_time = $variety["three_begin_time"];
                    $end_time = $variety["three_end_time"];
                    $sw_number = (strtotime($end_time) - strtotime($begin_time)) / 60;
                    $i = 1;
                    while ($i <= $sw_number) {
                        $num_count = $num_count + 1;
                        $count_time[]["Date"] = date("H:i", strtotime($begin_time) + 60 * $i);
                        $i++;
                    }
                }
            } else {//国外合约
                $str = 'http://47.110.136.149/minute?symbol=' . $code;
                $code = file_get_contents($str);
                if ($code) {
                    $comma_separateds = (array)json_decode($code);
                    if ($comma_separateds) {
                        $comma_separateds = (array)($comma_separateds[0]);
                        foreach ($comma_separateds["data"] as $ke => $va) {
                            $comma_separated[$ke] = (array)$va;
                        }
                        $pClose = $comma_separateds["pClose"];
                        $new_com = array();
                        $news = array();
                        foreach ($comma_separated as $k => $v) {
                            $count_time[]["Date"] = substr_replace($v["time"], ":", 2, 0);
                            $news["Date"] = substr_replace($v["time"], ":", 2, 0);//时间
                            $news["Close"] = $v["close"];//收盘价
                            $news["Volume"] = $v["volume"];//成交量
                            $news["turnover"] = $v["turnover"];//持仓量
                            $news["Open"] = 0;//开盘价
                            $news["High"] = 0;//最高价
                            $news["Low"] = 0;//最低价
                            $new_com[] = $news;
                        }
                    } else {
                        $new_com = 0;
                    }
                } else {
                    $new_com = 0;
                }
                if ($variety["one_end_time"]) {
                    $end_time = $variety["one_end_time"];
                    $begin_time = $variety["one_begin_time"];
                    $tradeTime = date("Hi", strtotime($begin_time)) . "~" . date("Hi", strtotime($end_time));
                }
                if ($variety["two_end_time"]) {
                    $end_time = $variety["two_end_time"];
                    $begin_time = $variety["two_begin_time"];
                    $tradeTime .= "|" . date("Hi", strtotime($begin_time)) . "~" . date("Hi", strtotime($end_time));
                }
                if ($variety["three_end_time"]) {
                    $begin_time = $variety["three_begin_time"];
                    $end_time = $variety["three_end_time"];
                    $tradeTime .= "|" . date("Hi", strtotime($begin_time)) . "~" . date("Hi", strtotime($end_time));
                }
                if ($variety["four_end_time"]) {
                    $begin_time = $variety["four_begin_time"];
                    $end_time = $variety["four_end_time"];
                    $tradeTime .= "|" . date("Hi", strtotime($begin_time)) . "~" . date("Hi", strtotime($end_time));
                }
            }
            $list = array("count_time" => $count_time, "new_con" => $new_com, "pClose" => $pClose, "tradeTime" => $tradeTime);
            cache($cacheName, $list, 60);
        }
        $r = msg_handle('', 1, $list);
        return $r;
    }

    /**
     * 查找用户最近的历史
     */
    public function history_bill($id, $data)
    {
        if (empty($data["time"])) {
            $data["time"] = 1;
        }
        if ($data["type"] == 1) {//资金状况
            $list = $this->find_user_money($id, $data["time"]);
        } else if ($data["type"] == 2) {//结算单
            $list = $this->find_user_close($id, $data["time"]);
        } else {//持仓明细
            $list = $this->find_user_position($id, $data["time"]);
        }
        $r = msg_handle("", 1, $list);
        return $r;
    }

    /*
     *查找用户历史资金状况
     */
    public function find_user_money($id, $time)
    {
        if ($time != 1) {
            $begin_time = strtotime($time . " 00:00");
            $end_time = strtotime($time . " 23:59");
            $list = $this->FlowLog->where(array("uid" => $id, "time" => ["between", [$begin_time, $end_time]]))->order('id', 'desc')->select();
        } else {
            $list = $this->FlowLog->where(array("uid" => $id))->order('id', 'desc')->select();
        }
        $new_list = array();
        if (count($list) > 0) {
            foreach ($list as $k => $v) {
                $new_list[$k]["time"] = date("Y-m-d H:i:s", $v["time"]);
                $new_list[$k]["name"] = $v["name"];
                if ($v["mold"] > 0) {//减钱
                    $new_list[$k]["number"] = "-" . abs($v["number"]);
                } else {
                    $new_list[$k]["number"] = $v["number"];
                }

            }
        }
        return $new_list;
    }

    /*
     *查找用户历史结算单
     */
    public function find_user_close($id, $time)
    {
        if ($time != 1) {
            $begin_time = strtotime($time . " 00:00");
            $end_time = strtotime($time . " 23:59");
            $list = $this->FlowLog->where(array("uid" => $id, "type" => 4, "time" => ["between", [$begin_time, $end_time]]))->order('id', 'desc')->select();
        } else {
            $list = $this->FlowLog->where(array("uid" => $id, "type" => 4))->order('id', 'desc')->select();
        }
        $new_list = array();
        if (count($list) > 0) {
            foreach ($list as $k => $v) {
                $new_list[$k]["time"] = date("Y-m-d H:i:s", $v["time"]);
                $new_list[$k]["name"] = $v["name"];
                if ($v["mold"] > 0) {//减钱
                    $new_list[$k]["number"] = "-" . abs($v["number"]);
                } else {
                    $new_list[$k]["number"] = $v["number"];
                }

            }
        }
        return $new_list;
    }

    /*
     *查找用户历史结算单
     */
    public function find_user_position($id, $time)
    {
        if ($time != 1) {
            $begin_time = strtotime($time . " 00:00");
            $end_time = strtotime($time . " 23:59");
            $list = $this->Userorders->where(array("uid" => $id, "type" => 0, "status" => 2, "is_close" => 1, "time" => ["between", [$begin_time, $end_time]]))->order('id', 'desc')->select();//用户持仓信息
        } else {
            $list = $this->Userorders->where(array("uid" => $id, "type" => 0, "status" => 2, "is_close" => 1))->order('id', 'desc')->select();//用户持仓信息
        }

        $new_list = array();
        if (count($list) > 0) {
            foreach ($list as $k => $v) {
                $contract = $this->Contract->where(array("code" => $v["code"]))->find();
                $new_list[$k]["time"] = date("Y-m-d H:i:s", $v["time"]);
                $new_list[$k]["name"] = $contract["name"];
                $new_list[$k]["number"] = $v["number"];
                $new_list[$k]["can_number"] = $v["number"] - $v["is_close_number"];
            }
        }
        return $new_list;
    }

}