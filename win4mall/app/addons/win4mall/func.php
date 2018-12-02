<?php

use Tygh\Registry;
use Tygh\Settings;
use Tygh\Http;

if (!defined('BOOTSTRAP')) { die('Access denied'); }

function fn_win4mall_install()
{
    db_query("INSERT INTO `?:payment_processors` (`processor`, `processor_script`, `processor_template`, `admin_template`, `callback`, `type`, `addon`) VALUES ('Win4mall', 'win4mall.php', 'views/orders/components/payments/cc_win4mall.tpl', 'win4mall.tpl', 'N', 'P', 'win4mall');");
}

function fn_win4mall_uninstall()
{
    db_query("DELETE FROM ?:payment_descriptions WHERE payment_id IN (SELECT payment_id FROM ?:payments WHERE processor_id IN (SELECT processor_id FROM ?:payment_processors WHERE processor_script IN ('win4mall.php')))");
    db_query("DELETE FROM ?:payments WHERE processor_id IN (SELECT processor_id FROM ?:payment_processors WHERE processor_script IN ('win4mall.php'))");
    db_query("DELETE FROM ?:payment_processors WHERE processor_script IN ('win4mall.php')");
}
