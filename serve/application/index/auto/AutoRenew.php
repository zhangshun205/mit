<?php

namespace app\index\auto;

use think\Controller;
use think\Request;

class AutoRenew extends Controller
{

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    /**
     * 递延费（自动续费）
     */
    public function index()
    {

    }


}