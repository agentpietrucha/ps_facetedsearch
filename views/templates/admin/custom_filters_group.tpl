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
{include file='./_functions/show_limit.tpl'}

{if isset($filter_subgroups)}
  <div class="panel">
    <h3><i class="icon-cogs"></i> {l s='Custom filters subgroups' d='Modules.Facetedsearch.Admin'}<span class="badge">{$filter_subgroups|count}</span></h3>
    <table class="table">
      <thead>
      <tr>
        <th class="fixed-width-xs center">ID</th>
        <th class="fixed-width-lg">Subgroup name</th>
        <th class="fixed-width-xs center"><span class="title_box text-right">{l s='Actions' d='Modules.Facetedsearch.Admin'}</span></th>
      </tr>
      </thead>
      <tbody>
      {foreach $filter_subgroups as $subgroup}
        <tr>
          <td class="fixed-width-xs center">{$subgroup->id}</td>
          <td class="fixed-width-lg">{$subgroup->name}</td>
          <td class="fixed-width-xs center">
            <div class="btn-group-action">
              <div class="btn-group pull-right">
                <a href="{$current_url}&amp;filter_group={$filter_group_id}&amp;filter_subgroup={(int)$subgroup->id}" class="btn btn-default">
                  <i class="icon-pencil"></i> {l s='Edit' d='Admin.Actions'}
                </a>
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                  <span class="caret"></span>&nbsp;
                </button>
                <ul class="dropdown-menu">
                  <li>
                    <a href="{$current_url}&amp;delete_custom_filter=1&amp;filter_subgroups={(int)$subgroup->id}"
                       onclick="return confirm('{l s='Do you really want to delete this filter template?' d='Modules.Facetedsearch.Admin'}');">
                      <i class="icon-trash"></i> {l s='Delete' d='Admin.Actions'}
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </td>
        </tr>
      {/foreach}
      </tbody>
    </table>
    <div class="panel-footer">
      <a class="btn btn-default pull-right" href="{$current_url}&amp;filter_group={$filter_group_id}&amp;filter_subgroup=0"><i class="process-icon-plus"></i> {l s='Add new' d='Modules.Facetedsearch.Admin'}</a>
    </div>
  </div>
{/if}
