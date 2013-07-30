# Deface::Override.new(:virtual_path  => "spree/admin/configurations/index",
#                      :name          => "blog_disqus_admin_configurations_menu",
#                      :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
#                      :partial       => "spree/blogs/admin/shared/blog_config",
#                      :disabled      => false)

Deface::Override.new(:virtual_path  => "spree/admin/shared/_configuration_menu",
                     :name          => "blog_disqus_admin_configurations_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_menu[data-hook]",
                     :partial       => "spree/blogs/admin/shared/blog_config",
                     :disabled      => false)

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "spree_essential_blog_in_header",
                     :insert_bottom => "#main-nav-bar",
                     :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/blog') ? 'current' : 'not'%>'><%= link_to t('blog'), '/blog'  %></li>",
                     :original => '442eefbb91b46a8773ce1de620f8f0a88a66caf1')

# Deface::Override.new(:virtual_path => "spree/layouts/admin",
#                      :name => "spree_essential_blog_admin_tab",
#                      :insert_bottom => "[data-hook='admin_tabs']",
#                      :text => "<%= tab(:posts, :icon => 'icon-file') %>",
#                      :original => '172a4c6e9823af5cd0a87a452eadd9e369f36174'
#                      )