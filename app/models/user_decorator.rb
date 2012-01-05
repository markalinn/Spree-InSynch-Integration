User.class_eval do
  has_one :mas_customer, :class_name => 'MasCustomer', :foreign_key => 'EmailAddress'

  def count_on_hand
    mas_product ? mas_product.TotalQtyOnHand.to_i : 0
  end

  def price
    mas_product ? mas_product.StdPrice.to_f : 1000
  end

end