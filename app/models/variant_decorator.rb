Variant.class_eval do
  belongs_to :mas_product, :class_name => 'MasProduct', :foreign_key => 'sku'
end