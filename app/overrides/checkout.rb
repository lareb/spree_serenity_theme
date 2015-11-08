Deface::Override.new(:virtual_path => 'spree/checkout/_delivery',
                    :name => 'remove_images',
                    :remove => "td.item-image, thead th:first-child, colgroup col:first-child")
Deface::Override.new(:virtual_path => 'spree/checkout/_confirm',
                    :name => "remove_images_confirm",
                    :remove => "td.item-image, thead th:first-child, colgroup col:first-child")
Deface::Override.new(virtual_path: 'spree/checkout/_delivery',
                    name: 'add_po_number_input',
                    insert_after: "#shipping_method",
                    text: "
<p class='field' data-hook='po_number'>
  <%= form.label :po_number, 'PO #: ' %>&nbsp;&nbsp;
  <%= form.text_field :po_number %>
</p>"
)
Deface::Override.new(virtual_path: 'spree/shared/_order_details',
  name: 'add_po_number',
  insert_after: '#line-items',
  text: "
<% if @order.po_number.present? %>
  <div class='row-fluid'>
    <div class='span12 text-center'>
      <b>PO #: </b>
      <%= @order.po_number %>
    </div>
  </div>
<% end %>
")