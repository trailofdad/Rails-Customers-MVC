require 'rspec'

describe 'My behaviour' do

  it 'should do something' do

    expect(true).to eq(true)
  end
end

# spec/models/customer_spec.rb
require 'spec_helper'
require 'rails_helper'

describe Customer do
  it "has a valid factory" do
    expect(FactoryGirl.create(:customer, FirstName:"John", LastName: "Smith")).to be_valid
    expect(FactoryGirl.create(:customer, FirstName:"Jane", LastName: "Doe")).to be_valid
  end

  it "First Customer is John" do
    cus1 = Customer.find(1)
    expect(cus1.FirstName).to eq("John")
  end

  it "Second Customer is Jane Doe" do
    cus2 = Customer.find(2)
    expect(cus2.LastName).to eq("Doe")
    expect(cus2.FirstName).to eq("Jane")
  end

  it "Should create a new Customer" do
    cus3 = Customer.new
    cus3.FirstName = "Bob"
    cus3.LastName = "Ross"
    cus3.Email = "example@gmail.com"
    cus3.save
    expect(cus3.LastName).to eq("Ross")
  end

end