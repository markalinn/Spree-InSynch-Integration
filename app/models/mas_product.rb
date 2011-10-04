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
end