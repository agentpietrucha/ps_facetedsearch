{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{include file='./_partials/messages.tpl'}

{if isset($attribute_grouped)}
  <form method="post" class="form-horizontal"">
    <div class="panel">
      <h3><i class="icon-cogs"></i> {l s='Attributes' d='Modules.Facetedsearch.Admin'}</h3>
      {foreach $attribute_grouped as $attribute_group_name => $attribute_group_values}
        <br>
        <h4>{$attribute_group_name}</h4>
        <table class="table">
          <thead>
          <tr>
            <th class="center fixed-width-xs"></th>
            <th>{l s='Attribute value' d='Modules.Facetedsearch.Admin'}</th>
          </tr>
          </thead>
          <tbody>
          {foreach $attribute_group_values as $attribute}
            <tr {if $attribute@index % 2 eq 1}class="odd"{/if}>
              <td class="center fixed-width-xs">
                <input type="checkbox" name="selected_attribute[]" value="{$attribute['id_attribute']};{$attribute['id_attribute_group']}" {if $attribute['selected']}checked{/if} />
              </td>
              <td class="">{$attribute['name']}</td>
            </tr>
          {/foreach}
          </tbody>
        </table>
      {/foreach}
      <div class="panel-footer">
              <button class="btn btn-default pull-right" name="submitFilterValues" type="submit"><i class="process-icon-save"></i>
                <span>{l s='Save' d='Admin.Actions'}</span>
              </button>
      </div>
    </div>
</form>
{/if}
