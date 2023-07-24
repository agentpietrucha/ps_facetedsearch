{include file='./_partials/messages.tpl'}

{if isset($attribute_grouped)}
  <form method="post" class="form-horizontal">
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
        <button class="btn btn-default pull-right" name="{$submit_action}" type="submit"><i class="process-icon-save"></i>
          <span>{l s='Save' d='Admin.Actions'}</span>
        </button>
      </div>
    </div>
  </form>
  <div class="panel">
    <a href="{$back_url}" class="btn btn-default">
      <i class="material-icons align-middle">arrow_back_ios</i>
      <span class="align-middle">{l s='Go back' d='Admin.Actions'}</span>
    </a>
  </div>
  <button class="btn btn-default scroll-down" onclick="window.scrollTo(0, document.body.scrollHeight)">
    <i class="material-icons align-middle">expand_more</i>
  </button>
{/if}
