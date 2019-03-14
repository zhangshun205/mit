<?php

namespace app\index\controller;

use think\Controller;
use think\Request;
use think\Db;

class Uploads extends Controller
{

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    public function upload()
    {
        $file = request()->file('file');
        if ($file) {
            // 移动到框架应用根目录/public/uploads/ 目录下
            $info = $file->validate(['ext' => 'jpg,png,gif,jpeg'])->rule('uniqid')->move(ROOT_PATH . 'public' . DS . 'uploads');
            if ($info) {
                $r = msg_handle(admin_url() . DS . 'uploads' . DS . $info->getFilename(), 200);
            } else {
                $r = msg_handle($file->getError(), 100);
            }
        } else {
            $r = msg_handle('上传失败', 100);
        }
        return json($r);
    }
}