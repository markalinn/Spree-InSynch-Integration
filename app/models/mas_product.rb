class MasProduct < ActiveRecord::Base
  set_table_name 'IM1_InventoryMasterfile'
  set_primary_key 'ItemNumber'
  has_one :spree_product_variant,
    :class_name => 'Variant',
    :foreign_key => 'sku'
  has_one :product,
    :through => :spree_product_variant
    #,
    #:joins => :product,
    #:conditions => ['products.deleted_at is NULL']
end