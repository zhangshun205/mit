<?php
// 定义应用目录
define('APP_PATH', __DIR__ . '/../application/');
define('BIND_MODULE', 'index');
$origin = isset($_SERVER['HTTP_ORIGIN']) ? $_SERVER['HTTP_ORIGIN'] : '';
$allow_origin = array('http://mitclient.htcrm.net', 'http://hngj.htcrm.net', 'http://localhost:8888', 'http://192.168.1.124:8080', 'http://192.168.1.124');
if (in_array($origin, $allow_origin)) {
    header('Access-Control-Allow-Origin:' . $origin);
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    header('Access-Control-Allow-Methods: GET, POST, PUT');
    header("Access-Control-Allow-Credentials:true");
}
// 加载框架引导文件
require __DIR__ . '/../thinkphp/start.php';
