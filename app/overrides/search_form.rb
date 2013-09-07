Deface::Override.new(:virtual_path  => "spree/shared/_search",
                     :insert_top => "input[type=submit]",
                     :text          => "<i class='icon-search'></i>",
                     :name          => "add_icon_to_search")
Deface::Override.new(:virtual_path  => "spree/shared/_search",
                     :add_to_attributes => "select, input[type=search]",
                     :attributes    => {:class => "top-search"},
                     :name          => "add_top-search_class")
Deface::Override.new(:virtual_path  => "spree/shared/_search",
                     :remove        => "select#taxon",
                     :name          => "remove_taxon_select")
Deface::Override.new(:virtual_path  => "spree/shared/_search",
                     :insert_after        => "select#taxon",
                     :text          => "TESTINGS!!",
                     :name => "test")

