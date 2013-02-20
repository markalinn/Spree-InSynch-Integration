Spree::Order.class_eval do
  has_one :mas_sales_order, :class_name => 'MasSalesOrder', :foreign_key => 'SalesOrderNo'
  
  #Redo of order number generation to accomodate MAS limitation of 7 characters
  def generate_order_number
    record = true
    while record
      random = "W#{Array.new(6){rand(9)}.join}"
      #Make sure number hasn't already been used
      record = self.class.find(:first, :conditions => ["number = ?", random])
    end
    self.number = random if self.number.blank?
    self.number
  end
  
  # Finalizes an in progress order after checkout is complete.
  # Called after transition to complete state when payments will have been processed
  #This is overriding default Spree behavior to also add records into MAS/Insynch tables
  def finalize!
    touch :completed_at
    InventoryUnit.assign_opening_inventory(self)
    # lock any optional adjustments (coupon promotions, etc.)
    adjustments.optional.each { |adjustment| adjustment.update_column('locked', true) }
    deliver_order_confirmation_email

    self.state_changes.create({
        :previous_state => 'cart',
        :next_state     => 'complete',
        :name           => 'order' ,
        :user_id        => (User.respond_to?(:current) && User.current.try(:id)) || self.user_id
    }, :without_protection => true)

    #ADDITIONAL LOGIC on top of Spree's- Record Order to MAS/Insynch table(s)
    #According to ROI need to put in lines before header so it's not picked up prior to lines going in
    mas_sales_order_line_no = 0
    self.line_items.each do |order_line_item|
      #Increment number to record in sequence field for MAS
      mas_sales_order_line_no = mas_sales_order_line_no + 1

      mas_sales_order_line = MasSalesOrderLine.new
      mas_sales_order_line.SalesOrderNo = self.number
      mas_sales_order_line.SequenceNo = mas_sales_order_line_no
      mas_sales_order_line.ItemCode = order_line_item.variant.sku
      mas_sales_order_line.ItemType = '1'
      mas_sales_order_line.QuantityOrderedOriginal = order_line_item.quantity
      mas_sales_order_line.OriginalUnitPrice = order_line_item.price
      mas_sales_order_line.save
    end
    mas_sales_order = MasSalesOrder.new
    mas_sales_order.SalesOrderNo = self.number
    mas_sales_order.OrderDate = self.created_at.strftime('%Y%m%d')
    #TODO- Confirm appropriate ARDiv for consumer sales
    mas_sales_order.ARDivisionNo  = '02'
    #Leave blank if new customer
    #TODO-  Pass in existing cust_no for customers who have ordered prior (ie. reference FromMAS Order info)
    mas_sales_order.EmailAddress = self.email
    mas_sales_order.CustomerNo  = ''
    mas_customer = MasCustomer.find(:first, :order => 'CustomerNo',:conditions => {:EmailAddress => self.email})
      if mas_customer
        mas_sales_order.CustomerNo  = mas_customer.CustomerNo
      end
    mas_sales_order.BillToName = self.bill_address.firstname + ' ' + self.bill_address.lastname
    mas_sales_order.BillToAddress1 = self.bill_address.address1
    mas_sales_order.BillToAddress2 = self.bill_address.address2
    mas_sales_order.BillToCity = self.bill_address.city
    mas_sales_order.BillToState = self.bill_address.state.name.upcase
    mas_sales_order.BillToZipCode = self.bill_address.zipcode
    mas_sales_order.BillToCountryCode = self.bill_address.country.iso_name
    mas_sales_order.ShipToName = self.ship_address.firstname + ' ' + self.ship_address.lastname
    mas_sales_order.ShipToAddress1 = self.ship_address.address1
    mas_sales_order.ShipToAddress2 = self.ship_address.address2
    mas_sales_order.ShipToCity = self.ship_address.city
    mas_sales_order.ShipToState = self.ship_address.state.name.upcase
    mas_sales_order.ShipToZipCode = self.ship_address.zipcode
    mas_sales_order.ShipToCountryCode = self.ship_address.country.iso_name
    mas_sales_order.CustomerPONo = self.created_at.strftime('%m%d%Y')
    mas_sales_order.WarehouseCode = '000'
    mas_sales_order.ARDivisionNo = '02'
    mas_sales_order.ShipVia = self.shipping_method.name
    #TODO-  Need to set appropriate TaxSchedule to CA for california orders.
    # OS appears to be the non-taxed value
    # CA needs to be passed for CA
    mas_sales_order.TaxSchedule = 'OS'
    if self.bill_address.state.name.upcase == 'CA'
      mas_sales_order.TaxSchedule = 'CA'
    end
#PaymentType      varchar(5)
#CardholderName   varchar(30)
#ExpirationDateYear varchar(4)
#ExpirationDateMonth varchar(2)
#EncryptedCreditCardNo varchar(24)
#FreightAmt       decimal(12,2)
    mas_sales_order.save

    #End additional logic

    #Send confirmation email
    OrderMailer.confirm_email(self).deliver

    self.state_events.create({
      :previous_state => "cart",
      :next_state     => "complete",
      :name           => "order" ,
      :user_id        => (User.respond_to?(:current) && User.current.try(:id)) || self.user_id
    })
  end
end