class MasSalesOrderLine < ActiveRecord::Base
  set_table_name 'ToMas_SO_SalesOrderDetail'
  set_primary_key 'SalesOrderNo'
  belongs_to :mas_sales_order, :foreign_key => 'SalesOrderNo'
end