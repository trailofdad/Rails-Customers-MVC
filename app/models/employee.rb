class Employee < ActiveRecord::Base
    self.table_name = 'Employee'
    self.primary_key = :EmployeeId

    has_many :customers, :class_name => 'Customer'
    belongs_to :employee, :class_name => 'Employee', :foreign_key => :ReportsTo
end
