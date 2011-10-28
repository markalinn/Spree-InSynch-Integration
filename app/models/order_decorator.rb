Order.class_eval do
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
    update_attribute(:completed_at, Time.now)
    self.out_of_stock_items = InventoryUnit.assign_opening_inventory(self)
    # lock any optional adjustments (coupon promotions, etc.)
    adjustments.optional.each { |adjustment| adjustment.update_attribute("locked", true) }

    #ADDITIONAL LOGIC on top of Spree's- Record Order to MAS/Insynch table(s)
    #According to ROI need to put in lines before header so it's not picked up prior to lines going in
    self.line_items.each do |order_line_item|
      mas_sales_order_line = MasSalesOrderLine.new
      mas_sales_order_line.SalesOrderNo = self.number
      mas_sales_order_line.ItemCode = order_line_item.variant.sku
      mas_sales_order_line.QuantityOrderedOriginal = order_line_item.quantity
      mas_sales_order_line.save
    end
    mas_sales_order = MasSalesOrder.new
    mas_sales_order.SalesOrderNo = self.number
    mas_sales_order.OrderDate = self.created_at.strftime('%Y%m%d')
    mas_sales_order.BillToName = self.bill_address.firstname + ' ' + self.bill_address.lastname
#BillToAddress1   varchar(30)
#BillToAddress2   varchar(30)
#BillToAddress3   varchar(30)
#BillToCity       varchar(20)
#BillToState      varchar(2)
#BillToZipCode    varchar(10)
#BillToCountryCode varchar(3)
    mas_sales_order.ShipToName = self.ship_address.firstname + ' ' + self.ship_address.lastname
#ShipToAddress1   varchar(30)
#ShipToAddress2   varchar(30)
#ShipToAddress3   varchar(30)
#ShipToCity       varchar(20)
#ShipToState      varchar(2)
#ShipToZipCode    varchar(10)
#ShipToCountryCode varchar(3)
#ShipVia          varchar(15)
#EmailAddress     varchar(50)
#Comment          varchar(30)
#PaymentType      varchar(5)
#CardholderName   varchar(30)
#ExpirationDateYear varchar(4)
#ExpirationDateMonth varchar(2)
#EncryptedCreditCardNo varchar(24)
#CreditCardAuthorizationNo varchar(16)
#CreditCardTransactionID varchar(10)
#AuthorizationDate varchar(8)
#AuthorizationTime varchar(6)
#AuthorizationCodeForDeposit varchar(16)
#CreditCardTransactionIDForDep varchar(10)
#PaymentTypeCategory varchar(1)
#TaxableAmt       decimal(13,2)
#NonTaxableAmt    decimal(13,2)
#SalesTaxAmt      decimal(12,2)
#FreightAmt       decimal(12,2)
#DepositAmt       decimal(13,2)
#DateCreated      varchar(8)
#TimeCreated      varchar(8)

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