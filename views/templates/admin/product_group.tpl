<form method="post" class="form-horizontal">
  <div class="panel">
    <h3><i class="icon-cogs"></i> {l s='Added products' d='Modules.Facetedsearch.Admin'}<span class="badge">{$products|count}</span></h3>
    <table class="table">
      <thead>
      <tr>
        <th class="fixed-width-xs"></th>
        <th class="">ID</th>
        <th class="">Product Name</th>
        <th class="">Product Image</th>
        <th class=""><span class="title_box text-right">{l s='Actions' d='Modules.Facetedsearch.Admin'}</span></th>
      </tr>
      </thead>
      <tbody>
      {foreach $products as $product}
        <tr>
          <td class="form-group fixed-width-xs">
            <div class="md-checkbox md-checkbox-inline">
              <label>
                <input type="checkbox" name="product_group_products_ids[]" value="{$product->id}" />
                <i class="md-checkbox-control"></i>
              </label>
            </div>
          </td>
          <td class="">{$product->id}</td>
          <td class="">
              <a href="{$product->admin_link}">
                {$product->name}
              </a>
          </td>
          <td>
            <img src="{$product->image}">
          </td>
          <td class="">
            <div class="btn-group-action">
              <div class="btn-group pull-right">
                <a href="{$current_url}&amp;delete_product_group_product=1&amp;product_group={(int)$product_group_id}&amp;product_id={(int)$product->id}" class="btn btn-default">
                  {l s='Delete' d='Admin.Actions'} <i class="icon-trash"></i>
                </a>
              </div>
            </div>
          </td>
        </tr>
      {/foreach}
      </tbody>
    </table>
    <div class="panel-footer">
{*      <button class="btn btn-default pull-right" href="{$current_url}&amp;bulk_product_group_products_delete=1&amp;product_group={(int)$product_group_id}"><i class="icon-trash"></i> {l s='Bulk remove' d='Modules.Facetedsearch.Admin'}</button>*}
      <button class="btn btn-default pull-right" type="submit" name="submit_bulk_product_group_products_delete"><i class="icon-trash"></i> {l s='Bulk remove' d='Modules.Facetedsearch.Admin'}</button>
    </div>
  </div>
</form>
<div class="panel">
  <a href="{$back_url}" class="btn btn-default">
    <i class="material-icons align-middle">arrow_back_ios</i>
    <span class="align-middle">{l s='Go back' d='Admin.Actions'}</span>
  </a>
</div>
