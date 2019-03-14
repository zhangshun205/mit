<?php

namespace app\index\controller;

use app\index\model\Agent;
use app\index\model\Bank;
use app\index\model\Staff;
use app\index\model\User;
use app\index\model\UserAccount;
use app\index\model\UserBank;
use PHPMailer\PHPMailer\PHPMailer;
use think\Controller;
use think\Request;

class Register extends Controller
{
    private $User;
    private $Bank;
    private $Staff;
    private $Agent;
    private $UserBank;
    private $UserAccount;
    private $PHPMailer;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->User = new User();
        $this->Bank = new Bank();
        $this->Agent = new Agent();
        $this->Staff = new Staff();
        $this->UserBank = new UserBank();
        $this->UserAccount = new UserAccount();
        $this->PHPMailer = new PHPMailer();
    }

    /**
     * 注册信息
     * @param $data array
     * @return array
     */
    public function index($data)
    {
        //2、不能用手机号登录，要用账号登录
        //3、客户注册成功后，要用短信和邮箱两种方式把账号发送给客户。
        //4、注册开户时需要客户本人身份证正反面、本人银行卡和具体银行卡开户行、联系电话等资料一并提交。也就是申请账号时实名认证加绑定银行卡。
        //5、风险揭示书的内容。
        $phone = empty($data['phone']) ? '' : $data['phone'];//手机号码
        $real_name = empty($data['name']) ? '' : $data['name'];//真实名称
        $card = empty($data['card']) ? '' : $data['card'];//身份证号码
        $positive = empty($data['positive']) ? '' : $data['positive'];//正面
        $other_side = empty($data['other_side']) ? '' : $data['other_side'];//反面
        $bank_side = empty($data['bank_side']) ? '' : $data['bank_side'];//正面
        $bank_address = empty($data['bank_address']) ? '' : $data['bank_address'];//开户行地址
        $bank_card = empty($data['bank_card']) ? '' : $data['bank_card'];//银行卡号
        $password = empty($data['password']) ? '' : $data['password'];//密码
        $code = empty($data['code']) ? '' : $data['code'];//手机验证码
        $reid = empty($data['reid']) ? '' : $data['reid'];//推荐码
        if (empty($real_name)) {
            $r = msg_handle('请输入真实名称', 0);
        } elseif (!chinese_name($real_name)) {
            $r = msg_handle('真实名称格式错误', 0);
        } elseif (empty($card)) {
            $r = msg_handle('请输入身份证号', 0);
        } elseif (!reg_card($card)) {
            $r = msg_handle('身份证号格式错误', 0);
        } elseif ($this->User->where(array('card' => $card))->find()) {
            $r = msg_handle('身份证号已被绑定', 0);
        } elseif (empty($positive)) {
            $r = msg_handle('身份证正面未上传', 0);
        } elseif (empty($other_side)) {
            $r = msg_handle('身份证背面未上传', 0);
        } elseif (empty($bank_address)) {
            $r = msg_handle('开户支行不能为空', 0);
        } elseif (empty($bank_side)) {
            $r = msg_handle('银行卡正面图片未上传', 0);
        } elseif (empty($bank_card)) {
            $r = msg_handle('银行卡号不能为空', 0);
        } elseif (!preg_match(REG_BANKCARD, $bank_card)) {
            $r = msg_handle('银行卡号格式错误', 0);
        } elseif ($this->UserBank->where(array('card' => $bank_card, 'status' => 1))->find()) {
            $r = msg_handle('银行卡号已被绑定', 0);
        } else if (empty($phone)) {
            $r = msg_handle('请输入手机号码', 0);
        } elseif (!reg_phone($phone)) {
            $r = msg_handle('手机号码格式错误', 0);
        } elseif ($this->User->verify_phone($phone)) {
            $r = msg_handle('手机号码已注册', 0);
//      } elseif ($phone != session('phone')) {
//            $r = msg_handle('手机号码和接受手机号码不符', 0);
        } elseif (empty($code)) {
            $r = msg_handle('请输入手机验证码', 0);
//      } elseif ($code != session('code')) {
//         $r = msg_handle('手机验证码错误', 0);
        } elseif (empty($password)) {
            $r = msg_handle('请输入登录密码', 0);
        } elseif (!reg_password($password)) {
            $r = msg_handle('登录密码必须为6-12字母+数字', 0);
        } else {

            $agent = $this->Agent->where(array('number|code|phone' => $reid, 'status' => 1))->find();
            if (empty($agent)) {
                $staff = $this->Staff->where(array('number|code|phone' => $reid, 'status' => 1))->find();
                if (empty($staff)) {
                    $r = msg_handle('推荐人信息不存在', 0);
                } else {
                    $r = $this->register_data($phone, '', $real_name, $card, $password, $positive, $other_side, array(), $bank_address, $bank_card, $bank_side, $staff, 1);
                }
            } else {
                $r = $this->register_data($phone, '', $real_name, $card, $password, $positive, $other_side, array(), $bank_address, $bank_card, $bank_side, $agent, 0);
            }
        }
        return $r;
    }

    /**
     * 注册处理
     * @param $phone  string 手机号码
     * @param $email string 邮箱信息
     * @param $real_name string 真实名称
     * @param $card string 身份证号
     * @param $password string 密码
     * @param $positive string 身份证正面
     * @param $other_side string 身份证背面
     * @param $referee array 推荐人信息
     * @param $type int 类型
     * @param $bank array 银行标示
     * @param $bank_address string 开户行地址
     * @param $bank_card string 银行卡号
     * @return array
     */
    public function register_data($phone, $email, $real_name, $card, $password, $positive, $other_side, $bank, $bank_address, $bank_card, $bank_side, $referee, $type)
    {
        $bank['id'] = 0;
        $bank['name'] = 0;
        $number = $this->User->number();
        $this->User->startTrans();
        if ($type == 0) {
            $res1 = $this->User->register($phone, $email, $real_name, $card, $password, $positive, $other_side, 0, $referee['id'], 0, $number);
            $res2 = $this->UserAccount->add_log($res1, 0, $referee['id'], 0);
            $res3 = $this->Agent->where(array('id' => $referee['id']))->setInc('user_team', 1);
            $res4 = 1;
            $res5 = $this->UserBank->add_log($res1, $real_name, $bank, $bank_address, $bank_card, $bank_side, $bank['name']);
        } else {
            $res1 = $this->User->register($phone, $email, $real_name, $card, $password, $positive, $other_side, 0, $referee['agent'], $referee['id'], $number);
            $res2 = $this->UserAccount->add_log($res1, 0, $referee['agent'], $referee['id']);
            $res3 = $this->Agent->where(array('id' => $referee['agent']))->setInc('user_team', 1);
            $res4 = $this->Staff->where(array('id' => $referee['id']))->setInc('user_team', 1);
            $res5 = $this->UserBank->add_log($res1, $real_name, $bank, $bank_address, $bank_card, $bank_side, $bank['name']);
        }
        if ($res1 && $res2 && $res3 && $res4 && $res5) {
            $this->User->commit();
            session('code', NULL);
            session('phone', NULL);
            $this->send_email($email, $number, $password);
            $r = msg_handle('注册成功' . $number, 1);
        } else {
            $this->User->rollback();
            $r = msg_handle('注册失败' . $number, 0);
        }
        return $r;
    }

    public function send_phone($phone, $number = '123456', $password = '123456')
    {
        $content = '您的账户名称：' . $number . '。登录密码：' . $password;
    }

    /**
     * @param string $mail
     * @param string $number
     * @param string $password
     */
    protected function send_email($mail = '173220862@qq.com', $number = '123456', $password = '123456')
    {
        $content = '您的账户名称：' . $number . '。登录密码：' . $password;
        $this->PHPMailer->isSMTP();// 使用SMTP服务
        $this->PHPMailer->CharSet = "utf8";// 编码格式为utf8，不设置编码的话，中文会出现乱码
        $this->PHPMailer->Host = "smtp.exmail.qq.com";// 发送方的SMTP服务器地址//smtp.exmail.qq.com 企业邮箱
        $this->PHPMailer->SMTPAuth = true;// 是否使用身份验证
        $this->PHPMailer->Username = "kefu@tongde.name";// 发送方的QQ邮箱用户名，就是自己的邮箱名
        $this->PHPMailer->Password = "1234Abcd";// 发送方的邮箱密码，不是登录密码,是qq的第三方授权登录码,要自己去开启,在邮箱的设置->账户->POP3/IMAP/SMTP/Exchange/CardDAV/CalDAV服务 里面
        $this->PHPMailer->SMTPSecure = "ssl";// 使用ssl协议方式,
        $this->PHPMailer->Port = 465;// QQ邮箱的ssl协议方式端口号是465/587
        $this->PHPMailer->setFrom("kefu@tongde.name", "注册成功");// 设置发件人信息，如邮件格式说明中的发件人,
        $this->PHPMailer->addAddress($mail);// 设置收件人信息，如邮件格式说明中的收件人
        //$this->PHPMailer->addReplyTo("xxxxx@qq.com", "Reply");// 设置回复人信息，指的是收件人收到邮件后，如果要回复，回复邮件将发送到的邮箱地址
        //$this->PHPMailer->addCC("xxx@163.com");// 设置邮件抄送人，可以只写地址，上述的设置也可以只写地址(这个人也能收到邮件)
        //$this->PHPMailer->addBCC("xxx@163.com");// 设置秘密抄送人(这个人也能收到邮件)
        //$this->PHPMailer->addAttachment("bug0.jpg");// 添加附件
        $this->PHPMailer->Subject = "恭喜您注册成功";// 邮件标题
        $this->PHPMailer->Body = $content;// 邮件正文
        //$this->PHPMailer-->AltBody = "This is the plain text纯文本";// 这个是设置纯文本方式显示的正文内容，如果不支持Html方式，就会用到这个，基本无用
        $this->PHPMailer->send();// 发送邮件
    }
}