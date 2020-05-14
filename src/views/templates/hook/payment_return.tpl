{*
 * 2020 HiPay Portugal
 *
 * NOTICE OF LICENSE
 *
 * @author    HiPay Portugal <portugal@hipay.com>
 * @copyright 2020 HiPay Portugal
 * @license   https://github.com/hipaypt/prestashop-16-hipay-comprafacil-mbway/blob/master/LICENSE
*}

{if $status == 'ok'}

    <p>
        <img src="{$this_path_hipaymbway}logo.png" alt="{l s='MB WAY' mod='hipaymbway'}" style="float:left; margin: 0px 10px 5px 0px;" />

        {l s='Your order on %s is complete.' sprintf=$shop_name mod='hipaymbway'}
        <br /><br />
        {l s='Please use your MB WAY app to validate your payment with reference' mod='hipaymbway'} <strong>{$mbway_reference}</strong>.

        <br /><br /> {l s='The payment amount is' mod='hipaymbway'} <span class="price"><strong>{$total_to_pay}</strong></span>
        {l s=' and your order reference %s.' sprintf=$reference mod='hipaymbway'}
        <br /><br /><strong>{l s='Your order will be sent as soon as we receive your payment confirmation.' mod='hipaymbway'}</strong>

    </p>

{else}

    <p class="warning">
        {l s='We have noticed that there is a problem with your order. If you think this is an error, you can contact our' mod='hipaymbway'}
        <a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='customer service department.' mod='cheque'}</a>.
    </p>
{/if}

