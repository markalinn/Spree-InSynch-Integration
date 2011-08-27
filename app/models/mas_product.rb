class MasProduct < ActiveRecord::Base
  set_table_name 'IM1_InventoryMasterfile'
  set_primary_key 'ItemNumber'
  has_many :spree_product_variants,
    :class_name => 'Variant',
    :foreign_key => 'sku'
end