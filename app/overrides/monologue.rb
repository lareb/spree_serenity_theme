Deface::Override.new(:virtual_path => 'monologue/posts/_pagination',
                    :name => 'add_center_class',
                    :add_to_attributes => "#pagination",
                    :attributes => {:class => "pagination-center"})
Deface::Override.new(:virtual_path => 'monologue/posts/_post_header',
                    :name => 'change_title_to_h4',
                    :replace => "h1",
                    :text => "<h4><%= link_to post.title, post.full_url %></h4>")
Deface::Override.new(:virtual_path => 'monologue/posts/_post_header',
                    :name => 'calendar_icon',
                    :insert_before => "span[data-monologue=time]",
                    :text => "<i class='icon-calendar'></i>")
Deface::Override.new(:virtual_path => 'monologue/posts/_post_header',
                    :name => 'small_date',
                    :surround => ".posted",
                    :text => "<small><%= render_original %></small>")
Deface::Override.new(:virtual_path => 'layouts/monologue/application/_sidebar',
                    :name => "sidebar_bootstrap",
                    :set_attributes => "aside",
                    :attributes => {:class => "sidebar span3 monologue"})
Deface::Override.new(:virtual_path => 'monologue/posts/_post',
                    :name => "add_section_class",
                    :set_attributes => "section",
                    :attributes => {:class => "post"})
# TODO: Not working
Deface::Override.new(:virtual_path => 'monologue/posts/_post',
                    :name => 'readmore_class',
                    :set_attributes => ".button",
                    :attributes => {:class => "theme"})

