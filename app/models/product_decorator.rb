Product.class_eval do
  before_create :find_existing_deleted_sku
  after_create :populate_with_mas_data

private
  
  def find_existing_deleted_sku
    if self.sku
      existing_deleted_variant = Variant.find(:first, :joins => :product, :conditions => ['products.deleted_at is not NULL and variants.sku = ?', self.sku], :readonly => false)
      if existing_deleted_variant
        #Don't create, instead re-enable the old deleted sku
        dbconn = self.class.connection_pool.checkout
        dbconn.transaction do
          dbconn.execute("update products set deleted_at = NULL where products.id = #{existing_deleted_variant.product.id}")
        end
        self.class.connection_pool.checkin(dbconn)
        #Return false so creation of new doesn't occur
        false
        #TODO-  Currently incorrectly returning to products index instead of /admin/products
      end
    end
  end
  
  def populate_with_mas_data
    @mas_product = MasProduct.first(:conditions => {:ItemNumber => self.sku})
    self.cost_price = @mas_product.StdCost
    if ! @mas_product.Weight.blank?
      self.weight = @mas_product.Weight.to_i
    end
    self.count_on_hand = @mas_product.TotalQtyOnHand.to_i
  end
  
end