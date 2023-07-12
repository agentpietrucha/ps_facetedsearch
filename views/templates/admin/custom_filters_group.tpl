{include file='./_partials/messages.tpl'}

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
  <div class="panel">
    <a href="{$back_url}" class="btn btn-default" name="submitFilterValues" type="submit">
      <i class="material-icons align-middle">arrow_back_ios</i>
      <span class="align-middle">{l s='Go back' d='Admin.Actions'}</span>
    </a>
  </div>
{/if}
