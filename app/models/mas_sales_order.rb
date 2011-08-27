class MasSalesOrder < ActiveRecord::Base
  set_table_name 'ToMAS_SO_SalesOrderHeader'
  set_primary_key 'SalesOrderNo'
  has_many :mas_sales_order_lines, :foreign_key => 'SalesOrderNo'
end