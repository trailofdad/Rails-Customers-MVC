require 'rspec'

describe 'My behaviour' do

  it 'should do something' do

    expect(true).to eq(true)
  end
end

# spec/models/employee_spec.rb
require 'spec_helper'
require 'rails_helper'

describe Employee do
  it "has a valid factory" do
    expect(FactoryGirl.create(:employee, FirstName:"John", LastName: "Smith")).to be_valid
    expect(FactoryGirl.create(:employee, FirstName:"Jane", LastName: "Doe")).to be_valid
  end

  it "First Customer is John" do
    cus1 = Employee.find(1)
    expect(cus1.FirstName).to eq("John")
  end

  it "Second Customer is Jane Doe" do
    cus2 = Employee.find(2)
    expect(cus2.LastName).to eq("Doe")
    expect(cus2.FirstName).to eq("Jane")
  end

  it "Should create a new Customer" do
    cus3 = Employee.new
    cus3.FirstName = "Bob"
    cus3.LastName = "Ross"
    cus3.Email = "example@gmail.com"
    cus3.save
    expect(cus3.LastName).to eq("Ross")
  end

end