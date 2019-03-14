<?php
/**
 * @param $wave_spot float 波动点位
 * @param $wave_price float 波动资金
 * @param $price float 成交价格
 * @param $cost float 成本价格
 * @param $number float 成交手数
 * @param $direction float 委托方向
 * @return float|int
 */
function profit_loss($wave_spot, $wave_price, $price, $cost, $number, $direction)
{
    $handicap = $direction ? ($price - $cost) : ($cost - $price);
    return $handicap / $wave_spot * $wave_price * $number;
}