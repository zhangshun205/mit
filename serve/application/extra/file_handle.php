<?php
/**
 * 取文件最后$n行
 * @param string $filename 文件路径
 * @param int $line 最后几行
 * @return mixed false表示有错误，成功则返回字符串
 */
function file_last_lines($filename, $line)
{
    $fp = fopen($filename, "r");
    $pos = -2;
    $eof = "";
    $head = false;   //当总行数小于Num时，判断是否到第一行了
    $lines = array();
    while ($line > 0) {
        while ($eof != "\n") {
            if (fseek($fp, $pos, SEEK_END) == 0) {    //fseek成功返回0，失败返回-1
                $eof = fgetc($fp);
                $pos--;
            } else {                               //当到达第一行，行首时，设置$pos失败
                fseek($fp, 0, SEEK_SET);
                $head = true;                   //到达文件头部，开关打开
                break;
            }

        }
        array_unshift($lines, fgets($fp));
        if ($head) {
            break;
        }                 //这一句，只能放上一句后，因为到文件头后，把第一行读取出来再跳出整个循环
        $eof = "";
        $line--;
    }
    fclose($fp);
    return $lines;
}

/**
 * 对查询结果集进行排序
 * @access public
 * @param array $list 查询结果
 * @param string $field 排序的字段名
 * @param string $sort_by 排序类型 （asc正向排序 desc逆向排序 nat自然排序）
 * @return array
 */
function list_sort_by($list, $field, $sort_by = 'DESC')
{
    if (is_array($list)) {
        $refer = $resultSet = array();
        foreach ($list as $i => $data) {
            $refer[$i] = &$data[$field];
        }
        switch ($sort_by) {
            case 'ASC': // 正向排序
                asort($refer);
                break;
            case 'DESC': // 逆向排序
                arsort($refer);
                break;
            case 'NAT': // 自然排序
                natcasesort($refer);
                break;
        }
        foreach ($refer as $key => $val) {
            $resultSet[] = &$list[$key];
        }
        return $resultSet;
    } else {
        return array();
    }
}

/**
 * @param $name string 合约名字
 * @param $symbol string 合约代码
 * @return string
 */
function contract_name($name, $symbol)
{
    $month = month_data($symbol);
    if ($month) {
        return preg_replace('|[0-9a-zA-Z/]+|', '', $name) . month_data($symbol);
    } else {
        if (strpos($name, '连') !== false) {
//            $name = str_replace("连", "主力", $name);
        } else {
            $name = $name . '连';
        }
        return preg_replace('|[0-9a-zA-Z/]+|', '', $name) . month_data($symbol);
    }
}

/**
 * 月份转换
 * @param $string
 * @return string
 */
function month_data($string)
{
    $string = substr($string, -1, 1);
    switch ($string) {
        case 'F':
            $name = year_data('01') . '01';
            break;
        case 'G':
            $name = year_data('02') . '02';
            break;
        case 'H':
            $name = year_data('03') . '03';
            break;
        case 'J':
            $name = year_data('04') . '04';
            break;
        case 'K':
            $name = year_data('05') . '05';
            break;
        case 'M':
            $name = year_data('06') . '06';
            break;
        case 'N':
            $name = year_data('07') . '07';
            break;
        case 'Q':
            $name = year_data('08') . '08';
            break;
        case 'U':
            $name = year_data('09') . '09';
            break;
        case 'V':
            $name = year_data('10') . '10';
            break;
        case 'X':
            $name = year_data('11') . '11';
            break;
        case 'Z':
            $name = year_data('12') . '12';
            break;
        default:
            $name = '';
            break;
    }
    return $name;
}

/**
 * 年份处理
 * @param $month string 月份
 * @return bool|string
 */
function year_data($month)
{
    $current_year = date('Y');
    $current_month = date('m');
    if (floatval($current_month) > floatval($month)) {
        return substr($current_year + 1, 2, 2);
    } else {
        return substr($current_year, 2, 2);
    }
}


