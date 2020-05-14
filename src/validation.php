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
include(dirname(__FILE__) . '/../../config/config.inc.php');
Tools::displayFileAsDeprecated();

include(dirname(__FILE__) . '/../../header.php');
include(dirname(__FILE__) . '/hipaymbway.php');

$context = Context::getContext();
$cart = $context->cart;
$hipaymbway = new HipayMbway();

if ($cart->id_customer == 0 OR $cart->id_address_delivery == 0 || $cart->id_address_invoice == 0 || !$hipaymbway->active)
    Tools::redirect('index.php?controller=order&step=1');

// Check that this payment option is still available in case the customer changed his address just before the end of the checkout process
$authorized = false;
foreach (Module::getPaymentModules() as $module)
    if ($module['name'] == 'hipaymbway') {
        $authorized = true;
        break;
    }
if (!$authorized)
    die($hipaymbway->l('This payment method is not available.', 'validation'));

$customer = new Customer($cart->id_customer);
if (!Validate::isLoadedObject($customer))
    Tools::redirect('index.php?controller=order&step=1');

$currency = $context->currency;
$total = (float) $cart->getOrderTotal(true, Cart::BOTH);

$hipaymbway->validateOrder((int) $cart->id, Configuration::get('HIPAY_MBWAY_WAITING'), $total, $hipaymbway->displayName, NULL, array(), (int) $currency->id, false, $customer->secure_key);
Tools::redirect('index.php?controller=order-confirmation&id_cart=' . (int) ($cart->id) . '&id_module=' . (int) ($hipaymbway->id) . '&id_order=' . $hipaymbway->currentOrder . '&key=' . $customer->secure_key);


