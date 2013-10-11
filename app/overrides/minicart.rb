Deface::Override.new(:virtual_path => 'spree/shared/_header',
                    :name => 'add_mini_cart',
                    :insert_bottom => "#link-to-cart",
                    :partial => "spree/shared/minicart")
# override loading message
Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                    :name => 'append_loading_message',
                    :insert_top => "#wrapper",
                    :text => %q{
<div id="progress" class="modal fade hide small-box-overlay" data-keyboard="false" data-backdrop="static">
  <div class="spin"></div>
  <span id="text"><%= Spree.t(:Loading)%>...</span>
</div>
})

