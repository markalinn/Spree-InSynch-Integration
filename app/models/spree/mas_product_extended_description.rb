module Spree
  class MasProductExtendedDescription < ActiveRecord::Base
    set_table_name 'IM_ItemExtDesc'
    set_primary_key 'ExtendedDescriptionKey'
    has_many :mas_products, :class_name => 'MasProduct', :foreign_key => 'ExtendedDescriptionKey'
  end
end