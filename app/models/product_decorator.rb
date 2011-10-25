Product.class_eval do
  has_one :mas_product, :through => :master
  #Removed this attempt at trying not to create duplicates!
  #This proved to re-enable ol product info that was undesired and a fresh page was wanted anyways.
  #May consider re-enabling in the future. So kept the method available.
  #before_create :find_existing_deleted_sku
  
  validates :sku, :presence => true

  def cost_price
    mas_product ? mas_product.StdCost.to_f : 0
  end

  def weight
    mas_product ? mas_product.Weight.to_f : 0
  end

  def count_on_hand
    mas_product ? mas_product.TotalQtyOnHand.to_i : 0
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