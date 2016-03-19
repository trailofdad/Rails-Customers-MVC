# spec/factories/employees.rb
FactoryGirl.define do
  factory :employee do |f|
    f.FirstName :FirstName
    f.LastName :LastName
    f.Email "example@gmail.com"
  end
end