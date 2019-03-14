<?php

use think\Route;
Route::rule('Test', 'Test/index', 'GET|POST');
Route::rule('share', 'Index/share', 'GET|POST');
Route::rule('auto', 'Auto/index', 'GET|POST');
Route::rule('upload', 'Uploads/upload', 'GET|POST');
Route::rule('price', 'Auto/price_info', 'GET|POST');

Route::rule('aa', 'Test/index', 'GET|POST');
