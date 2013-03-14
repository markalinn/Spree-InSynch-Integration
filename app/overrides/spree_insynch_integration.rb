Deface::Override.new(:virtual_path  => "spree/admin/products/new",
                     :replace       => "[data-hook='new_product_attrs']",
                     :partial       => "spree/admin/products/insynch_integration_new_product_attrs",
                     :name          => "admin_replace_new_product_attrs")

Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :replace       => "[data-hook='admin_product_form_right']",
                     :partial       => "spree/admin/products/insynch_integration_new_product_form_right",
                     :name          => "admin_replace_new_product_form_right")

Deface::Override.new(:virtual_path  => "spree/admin/variants/_form",
                     :replace       => "[data-hook='sku']",
                     :partial       => "spree/admin/variants/insynch_integration_variant_form_sku",
                     :name          => "admin_replace_variant_form_sku")

Deface::Override.new(:virtual_path  => "spree/admin/variants/_form",
                     :replace       => "[data-hook='price']",
                     :partial       => "spree/admin/variants/insynch_integration_variant_form_price",
                     :name          => "admin_replace_variant_form_price")

Deface::Override.new(:virtual_path  => "spree/admin/variants/_form",
                     :replace       => "[data-hook='cost_price']",
                     :partial       => "spree/admin/variants/insynch_integration_variant_form_cost_price",
                     :name          => "admin_replace_variant_form_cost_price")

Deface::Override.new(:virtual_path  => "spree/admin/variants/_form",
                     :replace       => "[data-hook='on_hand']",
                     :partial       => "spree/admin/variants/insynch_integration_variant_form_on_hand",
                     :name          => "admin_replace_variant_form_on_hand")
