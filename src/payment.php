<?php

/**
 * 2020 HiPay Portugal
 *
 * NOTICE OF LICENSE
 *
 * @author    HiPay Portugal <portugal@hipay.com>
 * @copyright 2020 HiPay Portugal
 * @license   https://github.com/hipaypt/prestashop-16-hipay-comprafacil-mbway/blob/master/LICENSE
 */
/**
 * @deprecated 1.5.0 This file is deprecated, use moduleFrontController instead
 */
$useSSL = true;

require('../../config/config.inc.php');
Tools::displayFileAsDeprecated();

$controller = new FrontController();
$controller->init();

Tools::redirect(Context::getContext()->link->getModuleLink('hipaymbway', 'payment'));
