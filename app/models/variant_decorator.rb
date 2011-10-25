Variant.class_eval do
  belongs_to :mas_product, :class_name => 'MasProduct', :foreign_key => 'sku'

  def count_on_hand
    self.mas_product ? self.mas_product.TotalQtyOnHand.to_i : nil
  end

end