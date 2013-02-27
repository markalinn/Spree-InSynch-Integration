Deface::Override.new(:virtual_path  => "spree/admin/products/new",
                     :replace       => "[data-hook='new_product_attrs']",
                     :partial       => "spree/admin/products/insynch_integration_new_product_attrs",
                     :name          => "admin_replace_new_product_attrs")


Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :replace       => "[data-hook='admin_product_form_right']",
                     :partial       => "spree/admin/products/insynch_integration_new_product_form_right",
                     :name          => "admin_replace_new_product_form_right")
