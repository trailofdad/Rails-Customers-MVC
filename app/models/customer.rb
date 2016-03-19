class Customer < ActiveRecord::Base
    self.table_name = 'Customer'
    self.primary_key = :CustomerId

    belongs_to :employee, :class_name => 'Employee', :foreign_key => :SupportRepId
    has_many :invoices, :class_name => 'Invoice', :foreign_key => :CustomerId, :dependent => :destroy
end
