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
  has_many :mas_product_extended_descriptions, :class_name => 'MasProductExtendedDescription', :foreign_key => 'ItemNumber'
  
  def mas_extended_description
    extended_description = ''
    mas_product_extended_descriptions.each do |mas_extended_description|
      extended_description = extended_description + mas_extended_description.CommentText.to_s.split('~;~')[0]
    end
    if extended_description.size > 1
      return extended_description
    else
      #Return the Products description if the MAS extended is not populated
      return self.ItemDescription
    end
  end
end