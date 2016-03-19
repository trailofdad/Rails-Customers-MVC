class InvoiceLine < ActiveRecord::Base
    self.table_name = 'InvoiceLine'
    self.primary_key = :InvoiceLineId

    belongs_to :invoice, :class_name => 'Invoice', :foreign_key => :InvoiceId, :dependent => :destroy
    belongs_to :track, :class_name => 'Track', :foreign_key => :TrackId
end
