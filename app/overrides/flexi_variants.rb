Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name => "converted_product_price_733808074",
                     :insert_before => "[data-hook='product_price'], #product_price[data-hook]",
                     :partial => "spree/products/ad_hoc_option_types")
Deface::Override.new(:virtual_path => "spree/products/_ad_hoc_option_types",
                     :name => "remove_options_title_title",
                     :remove => "h3")
Deface::Override.new(:virtual_path => "spree/products/_ad_hoc_option_types",
                     :name => "change_options_markup",
                     :surround => "h3")

