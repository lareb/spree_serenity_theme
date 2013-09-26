Deface::Override.new(:virtual_path => 'spree/checkout/_delivery',
                    :name => 'remove_images',
                    :remove => "td.item-image, thead th:first-child, colgroup col:first-child")
Deface::Override.new(:virtual_path => 'spree/checkout/_confirm',
                    :name => "remove_images_confirm",
                    :remove => "td.item-image, thead th:first-child, colgroup col:first-child")

