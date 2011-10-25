Variant.class_eval do
  belongs_to :mas_product, :class_name => 'MasProduct', :foreign_key => 'sku'

  def count_on_hand
    mas_product ? mas_product.TotalQtyOnHand.to_i : 0
  end

  def price
    mas_product ? mas_product.StdPrice.to_f : 1000
  end

end