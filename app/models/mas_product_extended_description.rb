class MasProductExtendedDescription < ActiveRecord::Base
  set_table_name 'IM3_ItemExtDesc'
  set_primary_key 'ExtendedDescriptionKey'
  belongs_to :mas_product, :class_name => 'IM1_InventoryMasterfile', :foreign_key => 'ItemNumber'
end