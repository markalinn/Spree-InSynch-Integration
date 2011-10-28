class MasSalesOrderLine < ActiveRecord::Base
  set_table_name 'ToMas_SO_SalesOrderDetail'
  belongs_to :mas_sales_order
end