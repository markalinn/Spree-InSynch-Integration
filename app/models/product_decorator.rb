Product.class_eval do
  after_create :populate_with_mas_data
  def populate_with_mas_data
    @mas_product = MasProduct.first(:conditions => {:ItemNumber => self.sku})
    self.cost_price = @mas_product.StdCost
    if ! @mas_product.Weight.blank?
      self.weight = @mas_product.Weight.to_i
    end
    self.count_on_hand = @mas_product.TotalQtyOnHand.to_i
  end
end