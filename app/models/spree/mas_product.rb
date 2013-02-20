module Spree
  class MasProduct < ActiveRecord::Base
    set_table_name 'IM1_InventoryMasterfile'
    set_primary_key 'ItemNumber'
    has_one :variant,
      :class_name => 'Variant',
      :foreign_key => 'sku'
    has_one :product, :through => :variant
      #,
      #:joins => :product,
      #:conditions => ['products.deleted_at is NULL']
    belongs_to :mas_product_extended_description, :class_name => 'MasProductExtendedDescription', :foreign_key => 'ExtendedDescriptionKey'
    
    def mas_extended_description
      mas_product_extended_description ? mas_product_extended_description.ExtendedDescription.to_s : self.ItemDescription
    end
  end
end