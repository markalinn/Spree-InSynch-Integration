module Spree
  class MasCustomer < ActiveRecord::Base
    set_table_name 'FromMASAR_Customer'
    set_primary_key 'CustomerNo'
    
    belongs_to :user, :foreign_key => 'email'
  end
end