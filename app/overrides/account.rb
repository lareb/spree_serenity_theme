Deface::Override.new(:virtual_path => 'spree/users/show',
                    :name => 'add_table_class',
                    :add_to_attributes => "table.order-summary",
                    :attributes => {:class => "table"})
Deface::Override.new(:virtual_path => 'spree/users/show',
                    :name => 'add_button_class',
                    :add_to_attributes => "#new_address_link a",
                    :attributes => {:class => "btn"})

