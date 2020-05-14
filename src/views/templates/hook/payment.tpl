{*
 * 2020 HiPay Portugal
 *
 * NOTICE OF LICENSE
 *
 * @author    HiPay Portugal <portugal@hipay.com>
 * @copyright 2020 HiPay Portugal
 * @license   https://github.com/hipaypt/prestashop-16-hipay-comprafacil-mbway/blob/master/LICENSE

*}

<p class="payment_module hipay_mbway_module">
    <a href="{$link->getModuleLink('hipaymbway', 'payment')|escape:'html'}" title="{l s='Pay with MB WAY' mod='hipaymbway'}">
    <img src="{$this_path_hipaymbway}logo.png" alt="{l s='Pay with MB WAY' mod='hipaymbway'}" width="86" height="49"/>
    &nbsp;&nbsp;{l s='Pay with MB WAY' mod='hipaymbway'}&nbsp;<span>{l s='(use your app to pay your order)' mod='hipaymbway'}</span>
    </a>
</p>

<style type="text/css">p.hipay_mbway_module a { padding: 5px 10px; }</style>
<style type="text/css">p.hipay_mbway_module img { height: 80px; width:80px; }</style>
<style type="text/css">p.hipay_mbway_module { padding: 0; }</style>
