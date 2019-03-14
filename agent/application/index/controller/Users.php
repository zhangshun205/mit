<?php

namespace app\index\controller;

use think\Request;
use app\common\model\User;
use app\common\model\Agent;
use app\common\model\Account;
use app\common\model\Flow;
use app\common\model\CapitalFlow;
use app\common\model\Recharge;
use app\common\model\RegisterApply;
use app\common\model\UserAccount;

class Users extends Common
{
    protected $User;
    private $Account;
    private $Recharge;
    private $Flow;
    private $RegisterApply;
    private $UserAccount;
    private $CapitalFlow;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
        $this->Account = new Account();
        $this->Recharge = new Recharge();
        $this->Flow = new Flow();
        $this->Agent = new Agent();
        $this->RegisterApply = new RegisterApply();
        $this->UserAccount = new UserAccount();
        $this->CapitalFlow = new CapitalFlow();
    }


    /**
     * 会员列表
     * @return mixed
     * @throws \PHPExcel_Exception
     * @throws \PHPExcel_Reader_Exception
     * @throws \PHPExcel_Writer_Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        empty($name) ? $map = array() : $map['name|phone|number'] = ['like', $name];
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $list = $this->User->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        //如果url里含有excel参数，则将结果导出到Excel
        if (isset($_GET["excel"])) {
            if ($_GET["excel"]) {
                //$list = $this->User->query($_post["excel"]);
                $this->export_users($list['data']);
            }
        }
        $sum = $this->Account->sum('account');
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        $this->assign('sum', $sum);
        return $this->fetch();
    }

    /**
     * 修改用户状态
     * @return \think\response\Json
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function edit()
    {
        $id = Request::instance()->param('id');
        if (empty($id)) {
            $r = msg_handle('操作失败', 0);
        } else {
            $user = $this->User->find($id);
            if ($user['status'] != 1) {
                $data['status'] = 1;
            } else {
                $data['status'] = 0;
            }
            $data['modify_time'] = time();
            $res = $this->User->where('id', $id)->update($data);
            if ($res) {
                $r = msg_handle('操作成功', 1);
            } else {
                $r = msg_handle('操作失败', 0);
            }
        }
        return json($r);
    }

    /**
     * 用户信息修改
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function user_edit()
    {
        $id = Request::instance()->param('id');
        $list = $this->User->where('id=' . $id)->find();
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 用户信息修改执行
     * @return array|\think\response\Json
     */
    public function user_edits()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            if (empty($data['real_name'])) {
                $r = msg_handle('请输入姓名', 0);
            } elseif (empty($data['card'])) {
                $r = msg_handle('请输入身份证号', 0);
            } elseif (empty($data['phone'])) {
                $r = msg_handle('请输入手机号', 0);
            } elseif (!(string)$data['type']) {
                $r = msg_handle('请选择账号类型', 0);
            } else {
                if ($data['type'] == '2') {
                    $data['type'] = 1;
                } else {
                    $data['type'] = 0;
                }
                if (empty($data['password'])) {
                    unset($data['password']);
                } else {
                    $data['password'] = md5($data['password']);
                }
                if (empty($data['security'])) {
                    unset($data['security']);
                    $data['security'] = md5("123456");
                } else {
                    $data['security'] = md5($data['security']);
                }
                $data['modify_time'] = time();
                $list = $this->User->update($data);
                if ($list) {
                    $r = msg_handle('操作成功！', 1);
                } else {
                    $r = msg_handle('操作失败！', -1);
                }
            }

        } else {
            $r = msg_handle('错误操作', 0);
        }
        return json($r);
    }

    /**
     * 添加用户/加载页面
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function user_add()
    {
        $agents = $this->Agent->select();
        $applys = array('id' => '0', 'name' => '', 'phone' => '', 'real_name' => '', 'type' => '');
        $this->assign("list", $applys);
        $this->assign("agent", $agents);
        return $this->fetch();
    }

    /**
     * @return array|mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function user_adds()
    {
        if ($_POST) {
            $data = $_POST['arr'];
            if (empty($data["name"])) {
                $r = msg_handle('用户名不能为空', 0);
            } else if (empty($data["real_name"])) {
                $r = msg_handle('真实姓名不能为空', 0);
            } else if (empty($data["phone"])) {
                $r = msg_handle('请输入用户手机号', 0);
            } else if (empty($data["password"])) {
                $r = msg_handle('请输入用户密码', 0);
            } else if (empty($data["security"])) {
                $r = msg_handle('请输入用户支付密码', 0);
            } else if ($this->User->where(array('phone' => $data['phone']))->find()) {
                $r = msg_handle('手机号码已使用', 0);
            } else {
                if (empty($data["reid"])) {
                    $data["reid"] = 0;
                } else {
                    $recom_user = $this->User->where('phone', $data['reid'])->field('id')->find();
                    $data["reid"] = empty($recom_user) ?: $recom_user['id'];
                }
                $this->User->startTrans();
                $res1 = $this->User->register($data);
                $res2 = $this->UserAccount->add_log($res1, $data['phone']);
                if ($res1 && $res2) {
                    $this->User->commit();
                    $r = msg_handle('注册成功!', 1);
                } else {
                    $this->User->rollback();
                    $r = msg_handle('注册失败！', 0);
                }
            }
        } else {
            $r = msg_handle('错误请求！', 0);
        }
        return json($r);
    }

    /**
     * 用户资金流水
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function user_flowlog()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $map_user['name|phone|real_name'] = $name;
            $user = $this->User->where($map_user)->field('id')->find();
            $map['uid'] = empty($user) ? 0 : $user['id'];
        }
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page'));
        $list = $this->CapitalFlow->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('list', $list['data']);
        $this->assign('sum_number', $list['sum_number']);
        $this->assign('sum_balance', $list['sum_balance']);
        return $this->fetch();
    }

    /**
     * 用户账户信息
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function userAccount()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        if ($name) {
            $map_user['name|phone|real_name'] = $name;
            $user = $this->User->where($map_user)->field('id')->find();
            $map['uid'] = empty($user) ? 0 : $user['id'];
        }
        $map['agent']=session('admin_id');
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $list = $this->UserAccount->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
//        $sum = $this->Account->sum('account');
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        $this->assign('sum', $list['sum']);
        return $this->fetch();
    }

    /**
     * 用户银行信息
     * @return mixed
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function userBank()
    {
        $map = array();
        $name = trim(input('get.name/s'));
        empty($name) ? $map = array() : $map['name|phone|number'] = ['like', $name];
        $map = $this->query_time($map, input('get.start_query'), input('get.end_query'));
        $current_page = page_judge(input('get.page/d'));
        $list = $this->User->query_log($map, $current_page, $this->num);
        $page = page_handling($list['num'], $current_page, $this->show, $list['total']);
        //如果url里含有excel参数，则将结果导出到Excel
        if (isset($_GET["excel"])) {
            if ($_GET["excel"]) {
                //$list = $this->User->query($_post["excel"]);
                $this->export_users($list['data']);
            }
        }
        $sum = $this->Account->sum('account');
        $this->assign('arr', $this->arr_info(input('get.')));
        $this->assign('empty', $this->null_html(12));
        $this->assign('page', $page);
        $this->assign('name', $name);
        $this->assign('start_query', input('get.start_query'));
        $this->assign('end_query', input('get.end_query'));
        $this->assign('list', $list['data']);
        $this->assign('sum', $sum);
        return $this->fetch();
    }

///////////////////////////////////////////////////////===================分割=========================================


    /**
     * @return mixed用户充值
     */
    public function rechange()
    {
        $id = Request::instance()->param('id');
        $this->assign('id', $id);
        $list = $this->User->where('id=' . $id)->find();
        $this->assign('list', $list);
        return $this->fetch();
    }

    /**
     * 用户充值执行
     * @return \think\response\Json
     */
    public function rechange_info()
    {
        if (request()->isAjax()) {
            $data = $_POST['arr'];
            $pre1 = '/^[0-9]+(.[0-9]{1,2})?$/';
            if (empty($data['number'])) {
                $r = msg_handle('请输入充值金额', 0);
                return $r;
            } elseif (!preg_match($pre1, $data['number'])) {
                $r = msg_handle('充值金额参数不正确', 0);
                return $r;
            } elseif (!preg_match($pre1, $data['fee'])) {
                $r = msg_handle('手续费参数不正确', 0);
                return $r;
            } elseif (empty($data['account'])) {
                $r = msg_handle('请输入到账金额', 0);
                return $r;
            } elseif (!preg_match($pre1, $data['account'])) {
                $r = msg_handle('到账金额参数不正确', 0);
                return $r;
            } else {
                $this->Account->startTrans();
                $list = $this->Account->where('uid', $data['id'])->setInc('account', $data['account']);
            }
            // dump($data);exit;
            $dat['uid'] = $data['id'];
            $dat['number'] = $data['number'];
            $dat['fee'] = $data['fee'];
            $dat['pay_type'] = $data['pay_type'];
            $dat['type'] = 1;
            $dat['time'] = time();
            $dat['status'] = 1;
            $dat['remark'] = $data['remark'];
            $dat['order'] = createOrderNum(1);
            $dat['pay_time'] = time() + 600;
            $map = $this->Recharge->insert($dat);
            $flow_data["uid"] = $data["id"];
            $flow_data["type"] = 1;
            $flow_data["name"] = "后台充值";
            $flow_data["number"] = $data['number'] - $data['fee'];
            $flow_data["fee"] = $data['fee'];
            $flow_data["status"] = 1;
            $flow_data["time"] = time();
            $flow_data["desc"] = $data['remark'];
            $map = $this->Flow->insert($flow_data);
            if ($list && $map) {
                $this->Account->commit();
                //设置成功后跳转页面的地址，默认的返回页面是$_SERVER['HTTP_REFERER']
                $this->success('充值成功', 'Users/index');
            } else {
                $this->Account->rollback();
                //错误页面的默认跳转页面是返回前一页，通常不需要设置
                $this->error('充值失败,请稍后重试!');
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return json($r);
    }

    /**
     * 处理用户账号申请
     * @return \think\response\Json
     */
    public function hand_apply()
    {
        if (request()->isAjax()) {
            $id = $_POST['id'];
            if (empty($id)) {
                $r = msg_handle('缺少参数', 0);
            } else {
                $r = $this->RegisterApply->where('id', $id)->update(
                    array(
                        'status' => 1,
                        'hand_time' => time(),
                    ));
                if ($r) {
                    $r = msg_handle('操作失败', 0);
                } else {
                    $r = msg_handle('操作成功', 1);
                }
            }
        }
        return json($r);
    }

    /**
     * 删除用户申请信息
     * @return \think\response\Json
     */
    public function del_apply()
    {
        if (request()->isAjax()) {
            $id = $_POST['id'];
            $list = $this->RegisterApply->where('id', $id)->delete();
            if ($list) {
                $r = msg_handle('操作成功', 1);
            } else {
                $r = msg_handle('操作失败', 0);
            }
        } else {
            $r = msg_handle('错误操作', 0);
        }
        return json($r);
    }


    public function p_name()
    {
        if ($_POST) {
            $data = $_POST['arr'];
            $p_user = $this->User->where(array("phone" => $data))->find();
            if ($p_user) {
                if ($p_user["real_name"] != "") {
                    $p_name = $p_user["real_name"];
                    $r = msg_handle("{$p_name}", 1);
                    return $r;
                } else {
                    $p_name = $p_user["name"];
                    $r = msg_handle("{$p_name}", 1);
                    return $r;
                }
            } else {
                $r = msg_handle('推荐人不存在', 0);
                return $r;
            }
        }
    }

    public function find_me($id)
    {
        $user = $this->User->where(array("id" => $id))->find();
        return $user;
    }

    public function find_parents($id)
    {
        $zishen = $this->find_me($id);
        $shuzu = array();
        $shuzu[1] = $zishen;
        if ($zishen) {
            if ($zishen["reid"] != 0) {
                $shuzu[1] = $zishen;
                $preferral = $zishen["reid"];
                $count = $this->User->count();
                $i = 1;
                do {
                    if ($preferral != 0) {
                        $zishens = $this->find_me($preferral);
                        $preferral = $zishens["reid"];
                        $i++;
                        $shuzu[$i] = $zishens;
                    } else {
                        $i = $count + 1;
                    }
                } while ($i < $count);
            } else {
                $shuzu[1] = $zishen;
            }
        }
        return $shuzu;
    }

    public function real()
    {
        return $this->fetch();
    }

    public function export_users($xlsData)
    {//导出Excel表格操作
        //$xlsData = $this->User->select();
        Vendor('PHPExcel.Classes.PHPExcel');//调用类库,路径是基于vendor文件夹的
        Vendor('PHPExcel.Classes.PHPExcel.Worksheet.Drawing');
        Vendor('PHPExcel.Classes.PHPExcel.Writer.Excel2007');
        $objExcel = new \PHPExcel();
        //set document Property
        $objWriter = \PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');
        $objActSheet = $objExcel->getActiveSheet();
        $key = ord("A");
        $letter = explode(',', "A,B,C,D,E,F,G,H,I,J,K");
        $arrHeader = array('用户账号', '手机号码', '用户昵称', '用户姓名', '用户状态', '用户身份证', '注册时间', '注册IP', '账户余额', '代理ID', '所属机构');
        //填充表头信息
        $lenth = count($arrHeader);
        for ($i = 0; $i < $lenth; $i++) {
            $objActSheet->setCellValue("$letter[$i]1", "$arrHeader[$i]");
        };
        //填充表格信息
        foreach ($xlsData as $k => $v) {
            $k += 2;
            $objActSheet->setCellValue('A' . $k, $v['id']);
            $objActSheet->setCellValue('B' . $k, $v['phone']);
            // // 图片生成
            // $objDrawing[$k] = new \PHPExcel_Worksheet_Drawing();
            // $objDrawing[$k]->setPath('public/static/admin/images/profile_small.jpg');
            // // 设置宽度高度
            // $objDrawing[$k]->setHeight(40);//照片高度
            // $objDrawing[$k]->setWidth(40); //照片宽度
            // /*设置图片要插入的单元格*/
            // $objDrawing[$k]->setCoordinates('C'.$k);
            // // 图片偏移距离
            // $objDrawing[$k]->setOffsetX(30);
            // $objDrawing[$k]->setOffsetY(12);
            // $objDrawing[$k]->setWorksheet($objPHPExcel->getActiveSheet());
            // 表格内容
            $objActSheet->setCellValue('C' . $k, $v['name']);
            $objActSheet->setCellValue('D' . $k, $v['real_name']);
            $objActSheet->setCellValue('E' . $k, $v['status']);
            $objActSheet->setCellValue('F' . $k, $v['card']);
            $objActSheet->setCellValue('G' . $k, $v['time']);
            $objActSheet->setCellValue('H' . $k, $v['login_ip']);
            $objActSheet->setCellValue('I' . $k, $v['account']['account']);
            $objActSheet->setCellValue('J' . $k, $v['agent']);
            $objActSheet->setCellValue('K' . $k, $v['subsidiary_organ']);
            // 表格高度
            $objActSheet->getRowDimension($k)->setRowHeight(20);
        }
        $width = array(20, 20, 15, 10, 10, 30, 10, 15);
        //设置表格的宽度
        $objActSheet->getColumnDimension('A')->setWidth($width[3]);
        $objActSheet->getColumnDimension('B')->setWidth($width[3]);
        $objActSheet->getColumnDimension('C')->setWidth($width[3]);
        $objActSheet->getColumnDimension('D')->setWidth($width[3]);
        $objActSheet->getColumnDimension('E')->setWidth($width[3]);
        $objActSheet->getColumnDimension('F')->setWidth($width[3]);
        $objActSheet->getColumnDimension('G')->setWidth($width[3]);
        $objActSheet->getColumnDimension('H')->setWidth($width[3]);
        $objActSheet->getColumnDimension('I')->setWidth($width[3]);
        $objActSheet->getColumnDimension('J')->setWidth($width[3]);
        $objActSheet->getColumnDimension('K')->setWidth($width[3]);
        $outfile = "会员信息表.xls";
        ob_end_clean();
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header('Content-Disposition:inline;filename="' . $outfile . '"');
        header("Content-Transfer-Encoding: binary");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        $objWriter->save('php://output');
    }

    public function export_recharge($xlsData)
    {//导出Excel表格操作
        //$xlsData = $this->User->select();
        Vendor('PHPExcel.Classes.PHPExcel');//调用类库,路径是基于vendor文件夹的
        Vendor('PHPExcel.Classes.PHPExcel.Worksheet.Drawing');
        Vendor('PHPExcel.Classes.PHPExcel.Writer.Excel2007');
        $objExcel = new \PHPExcel();
        //set document Property
        $objWriter = \PHPExcel_IOFactory::createWriter($objExcel, 'Excel2007');
        $objActSheet = $objExcel->getActiveSheet();
        $key = ord("A");
        $letter = explode(',', "A,B,C,D,E,F,G");
        $arrHeader = array('账户ID', '用户姓名', '手机号', '充值金额', '手续费', '实际到账金额', '创建时间');
        //填充表头信息
        $lenth = count($arrHeader);
        for ($i = 0; $i < $lenth; $i++) {
            $objActSheet->setCellValue("$letter[$i]1", "$arrHeader[$i]");
        };
        //填充表格信息
        foreach ($xlsData as $k => $v) {
            $k += 2;
            $objActSheet->setCellValue('A' . $k, $v['uid']);
            $objActSheet->setCellValue('B' . $k, $v['user']['name']);
            // // 图片生成
            // $objDrawing[$k] = new \PHPExcel_Worksheet_Drawing();
            // $objDrawing[$k]->setPath('public/static/admin/images/profile_small.jpg');
            // // 设置宽度高度
            // $objDrawing[$k]->setHeight(40);//照片高度
            // $objDrawing[$k]->setWidth(40); //照片宽度
            // /*设置图片要插入的单元格*/
            // $objDrawing[$k]->setCoordinates('C'.$k);
            // // 图片偏移距离
            // $objDrawing[$k]->setOffsetX(30);
            // $objDrawing[$k]->setOffsetY(12);
            // $objDrawing[$k]->setWorksheet($objPHPExcel->getActiveSheet());
            // 表格内容
            $objActSheet->setCellValue('C' . $k, $v['user']['phone']);
            $objActSheet->setCellValue('D' . $k, $v['number']);
            $objActSheet->setCellValue('E' . $k, $v['fee']);
            $objActSheet->setCellValue('F' . $k, $v['number'] - $v['fee']);
            $objActSheet->setCellValue('G' . $k, $v['time']);
            // 表格高度
            $objActSheet->getRowDimension($k)->setRowHeight(20);
        }
        $width = array(20, 20, 15, 10, 10, 30, 10, 15);
        //设置表格的宽度
        $objActSheet->getColumnDimension('A')->setWidth($width[3]);
        $objActSheet->getColumnDimension('B')->setWidth($width[3]);
        $objActSheet->getColumnDimension('C')->setWidth($width[3]);
        $objActSheet->getColumnDimension('D')->setWidth($width[3]);
        $objActSheet->getColumnDimension('E')->setWidth($width[3]);
        $objActSheet->getColumnDimension('F')->setWidth($width[3]);
        $objActSheet->getColumnDimension('G')->setWidth($width[3]);
        $outfile = "会员充值记录表.xls";
        ob_end_clean();
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header('Content-Disposition:inline;filename="' . $outfile . '"');
        header("Content-Transfer-Encoding: binary");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Pragma: no-cache");
        $objWriter->save('php://output');
    }
}

?>