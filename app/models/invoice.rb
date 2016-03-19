class Invoice < ActiveRecord::Base
    self.table_name = 'Invoice'
    self.primary_key = :InvoiceId

    belongs_to :customer, :class_name => 'Customer', :foreign_key => :CustomerId, :dependent => :destroy
    has_many :invoicelines, :class_name => 'InvoiceLine', :foreign_key => :InvoiceId, :dependent => :destroy
end
