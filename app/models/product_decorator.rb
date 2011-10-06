Product.class_eval do
  has_one :mas_product, :through => :master
  before_create :find_existing_deleted_sku
  
  validates :sku, :presence => true

  def cost_price
    self.mas_product.StdCost.to_f if self.mas_product
  end

  def master_price
    self.mas_product.StdPrice.to_f if self.mas_product
  end

  def weight
    self.mas_product.Weight.to_f if self.mas_product
  end

  def count_on_hand
    self.mas_product.TotalQtyOnHand.to_i if self.mas_product
  end

private

  def find_existing_deleted_sku
    if ! self.sku.blank?
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
      end
    end
  end
  
end