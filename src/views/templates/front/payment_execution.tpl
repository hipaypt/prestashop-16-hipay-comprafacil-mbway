{*
 * 2020 HiPay Portugal
 *
 * NOTICE OF LICENSE
 *
 * @author    HiPay Portugal <portugal@hipay.com>
 * @copyright 2020 HiPay Portugal
 * @license   https://github.com/hipaypt/prestashop-16-hipay-comprafacil-mbway/blob/master/LICENSE

*}

{capture name=path}
	<a href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html':'UTF-8'}" title="{l s='Go back to the Checkout' mod='hipaymbway'}">{l s='Checkout' mod='hipaymbway'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='MB WAY Payment' mod='hipaymbway'}
{/capture}

<h2>{l s='Order summary' mod='hipaymbway'}</h2>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

{if isset($nbProducts) && $nbProducts <= 0}
    
    <p class="warning">{l s='Your shopping cart is empty.' mod='hipaymbway'}</p>

{else}

    <h3>{l s='MB WAY payment' mod='hipaymbway'}</h3>
    <form action="{$link->getModuleLink('hipaymbway', 'validation', [], true)|escape:'html'}" method="post">
        <p>
            <img src="{$this_path_hipaymbway}logo.png" alt="{l s='MB WAY' mod='hipaymbway'}" style="float:left; margin: 0px 10px 10px 10px;" />
            {l s='You have chosen to pay with MB WAY.' mod='hipaymbway'}
        </p>
        <p>
            {l s='The total amount of your order comes to:' mod='hipaymbway'}
            <span id="amount" class="price">{displayPrice price=$total}</span>
            {if $use_taxes == 1}
                {l s='(tax incl.)' mod='hipaymbway'}
            {/if}
        </p>

        <p>
            {l s='You can enter an alternative payment phone number, associated with your MB WAY App.' mod='hipaymbway'}
        </p>

        <p>
            <strong>{l s='Mobile phone number' mod='hipaymbway'}:</strong> <input type="text" size="11" autocomplete="off" name="altPhoneNumber" id="altPhoneNumber" maxlength="9">
        </p>

        <p>
            {l s='Please ensure you have the MB WAY App installed and activated for your phone number.' mod='hipaymbway'}
        </p>

        <p>
            <br /><br />{l s='The payment information will be displayed on the next page.' mod='hipaymbway'}. <b>{l s='Please confirm your order by clicking \'I confirm my order\'.' mod='hipaymbway'}</b><br />
        </p>

        <p class="cart_navigation" id="cart_navigation">
            <input type="submit" value="{l s='I confirm my order' mod='hipaymbway'}" class="exclusive_large"/>
            <a href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html'}" class="button_large">{l s='Other payment methods' mod='hipaymbway'}</a>
        </p>
    </form>
{/if}
