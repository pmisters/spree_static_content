require "deface"

Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "static_content_admin_tab",
                     :insert_after => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:pages) %>",
                     :disabled => false)

class SiteHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs, :text => "<li><a href='/admin/pages/'>Pages</a></li>"
end