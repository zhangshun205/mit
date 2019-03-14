<?php

namespace app\index\controller;

use app\index\model\User;
use think\Controller;
use think\Request;

class Index extends Controller
{
    private $User;
    private $Home;
    private $Login;
    private $Member;
    private $TradeBuy;
    private $Quotations;
    private $Record;
    private $TradeSell;
    private $AutoMarket;
    private $Operation;
    private $Finance;
    private $Contracts;
    private $PhoneCode;
    private $Register;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->Login = new Login();
        $this->Home = new Home();
        $this->Member = new Member();
        $this->TradeBuy = new TradeBuy();
        $this->TradeSell = new TradeSell();
        $this->Record = new Record();
        $this->Contracts = new Contracts();
        $this->Quotations = new Quotations();
        $this->AutoMarket = new AutoMarket();
        $this->Operation = new Operation();
        $this->Finance = new Finance();
        $this->PhoneCode = new PhoneCode();
        $this->Register = new Register();
    }

    public function share()
    {
        return $this->fetch();
    }

    public function index()
    {
//        $nozzle = input('post.nozzle');
        $nozzle = input('nozzle');
        $data = input('post.');
        switch ($nozzle) {
            case 'login_info'://登录信息
                $r = $this->Home->index();
                break;
            case 'trade_login'://交易登录
                $r = $this->Home->trade_login();
                break;
            case 'disclaimer_protocol'://免责协议
                $r = $this->Home->disclaimer_protocol();
                break;
            case 'register_code':            //phone 注册手机号码
                $r = $this->PhoneCode->register_code($data);
                break;
            case 'register':               //phone code password reid 注册信息
                $r = $this->Register->index($data);
                break;
            case 'about'://关于
                $r = $this->Home->about($this->verify_token($data));
                break;
            case 'about_us'://关于我们
                $r = $this->Home->about_us();
                break;
            case 'query_home'://主力合约
                $r = $this->Quotations->query_home($data);
                break;
            case 'query_contract'://批量查询
                $r = $this->Quotations->query_contract($data);
                break;
            case 'query_exchange'://查询全部交易所信息
                $r = $this->Quotations->query_exchange();
                break;
            case 'trade_contract'://允许交易合约
                $r = $this->Contracts->trade_contract();
                break;
            case 'single_futures'://大单边保证金
                $r = $this->Contracts->single_futures();
                break;
            case 'time_sharing'://分时数据查询
                $r = $this->AutoMarket->time_sharing($data);
                break;
            case 'kline_sharing'://K线数据查询
                $r = $this->AutoMarket->kline_sharing($data);
                break;
            case 'news_list'://新闻列表
                $r = $this->Home->news_list();
                break;
            case 'notice_info'://登录公告
                $r = $this->Home->notice_info();
                break;
            case 'login'://登录账户
                $r = $this->Login->index($data);
                break;
            case 'recharge_info'://出入金信息
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Finance->recharge_info($r['data']) : $r;
                break;
            case 'recharge'://申请充值
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Finance->recharge($r['data']['id'], $data) : $r;
                break;
            case 'recharge_log'://充值记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Finance->recharge_log($r['data'], $data) : $r;
                break;
            case 'withdraw'://申请提现
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Finance->withdraw($r['data'], $data) : $r;
                break;
            case 'withdraw_log'://提现记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Finance->withdraw_log($r['data'], $data) : $r;
                break;
            case 'modify_security'://修改交易密码
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Member->modify_security($r['data'], $data) : $r;
                break;
            case 'modify_login'://修改登录密码
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Member->modify_login($r['data'], $data) : $r;
                break;
            case 'account_info'://登录账户
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Member->account_info($r['data']) : $r;
                break;
            case 'entrust_log'://全部委托记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->entrust_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'day_entrust_log'://当日委托记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->day_entrust_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'history_entrust_log'://历史委托记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->history_entrust_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'deal_log'://全成交记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->deal_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'day_deal_log'://当日成交记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->day_deal_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'history_deal_log'://历史成交记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->history_deal_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'depot_log'://持仓记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->depot_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'prepaid_log'://预埋单记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->prepaid_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'condition_log'://条件单记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->condition_log($r['data']['id'], $r['data'], $data) : $r;
                break;
            case 'loss_log'://止损单记录
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Record->loss_log($r['data']['id'], $r['data']) : $r;
                break;
            case 'prepaid_bill'://添加预埋单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->prepaid_bill($r['data']['id'], $data) : $r;
                break;
            case 'del_prepaid_bill'://删除单笔预埋单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->del_prepaid_bill($r['data']['id'], $data) : $r;
                break;
            case 'send_prepaid_bill'://发送预埋单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->send_prepaid_bill($r['data']['id'], $data) : $r;
                break;
            case 'condition_list'://添加条件单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->condition_list($r['data']['id'], $data) : $r;
                break;
            case 'working_condition_list'://修改条件单工作状态
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->working_condition_list($r['data']['id'], $data) : $r;
                break;
            case 'del_condition_list'://删除条件单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->del_condition_list($r['data']['id'], $data) : $r;
                break;
            case 'modify_condition_list'://修改条件单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->modify_condition_list($r['data']['id'], $data) : $r;
                break;
            case 'del_all_condition'://删除全部条件单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->del_all_condition($r['data']['id']) : $r;
                break;
            case 'suspend_all_condition'://暂定全部条件单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->suspend_all_condition($r['data']['id']) : $r;
                break;
            case 'startup_all_condition'://启动全部条件单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->startup_all_condition($r['data']['id']) : $r;
                break;
            case 'stop_loss'://增加止损单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->stop_loss($r['data']['id'], $data) : $r;
                break;
            case 'del_all_loss'://删除全部止损单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->del_all_loss($r['data']['id']) : $r;
                break;
            case 'del_loss'://删除止损单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->del_loss($r['data']['id'], $data) : $r;
                break;
            case 'working_loss'://修改止损单工作状态
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->working_loss($r['data']['id'], $data) : $r;
                break;
            case 'suspend_all_loss'://暂停全部止损单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->suspend_all_loss($r['data']['id']) : $r;
                break;
            case 'startup_all_loss'://启动全部止损单
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->Operation->startup_all_loss($r['data']['id']) : $r;
                break;
            case 'trade_open'://委托开仓
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->TradeBuy->index($r['data']['id'], $data) : $r;
                break;
            case 'trade_close'://委托开仓
                $r = $this->verify_token($data);
                $r = $r['code'] == 1 ? $this->TradeSell->index($r['data']['id'], $data) : $r;
                break;
            default:
                $r = msg_handle('没有传递接口名称', 0);
                break;
        }
        return json($r);
    }

    /**
     * 验证 token
     * @param $data array
     * @return array
     */
    protected function verify_token($data)
    {
        if (empty($data['token'])) {
            $r = msg_handle('登录超时，请重新登录', -1);
        } else {
            $this->User = new User();
            $user = $this->User->verify_token($data['token']);
            if (!$user) {
                $r = msg_handle('异常登录，请重新登录', -1);
            } else {
                $r = msg_handle('', 1, $user);
            }
        }
        return $r;
    }
}






