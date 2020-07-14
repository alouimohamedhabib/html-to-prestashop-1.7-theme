{**
* 2007-2019 PrestaShop and Contributors
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License 3.0 (AFL-3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* https://opensource.org/licenses/AFL-3.0
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to https://www.prestashop.com for more information.
*
* @author PrestaShop SA <contact@prestashop.com>
    * @copyright 2007-2019 PrestaShop SA and Contributors
    * @license https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
    * International Registered Trademark & Property of PrestaShop SA
    *}
    <div id="_desktop_cart" class="header-element">
        <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
            <div class="header">
                {if $cart.products_count > 0}
                    <a rel="nofollow" href="{$cart_url}">
                    {/if}
                    {* <i class="material-icons shopping-cart">shopping_cart</i> *}
                    <span class="material-icons" onclick="handleCloseCartModal()">shopping_basket</span>
                    <span class="cart-label  ">{l s='Cart' d='Shop.Theme.Checkout'}</span>
                    <span class="cart-products-count">{$cart.products_count}</span>
                    {if $cart.products_count > 0}
                    </a>
                {/if}
            </div>
            <div class="cart-hover-content modal-hidden " id="modalCartDetails">
                <span class="material-icons" id="closeCartModal" onclick="handleCloseCartModal()">
                    close
                </span>
                <ul>
                    {foreach from=$cart.products item=product}
                        <li class="cart-wishlist-item">
                            {include 'module:ps_shoppingcart/ps_shoppingcart-product-line.tpl' product=$product}
                        </li>
                    {/foreach}
                </ul>
                <div class="cart-subtotals">
                    {foreach from=$cart.subtotals item="subtotal"}
                        <div class="{$subtotal.type}">
                            <span class="label">{$subtotal.label}</span>
                            <span class="value">{$subtotal.value}</span>
                        </div>
                    {/foreach}
                </div>

                <div class="cart-total">
                    <span class="label">{$cart.totals.total.label}</span>
                    <span class="value">{$cart.totals.total.value}</span>
                </div>
                <div class="cart-wishlist-action">
                    <a class="cart-wishlist-viewcart" href="{$cart_url}">view cart</a>
                    <a class="cart-wishlist-checkout" href="{$urls.pages.order}">{l s='Check Out' d='Shop.Theme.Actions'}</a>
                </div>

            </div>
        </div>
    </div>