require 'rspec'
require 'spec_helper'
require 'rails_helper'

describe CustomersController do
  # spec/controllers/customers_controller_spec.rb

  # ... other describe blocks omitted omitted
  describe "GET #index" do
    it "populates an array of customers" do
      customer = FactoryGirl.create(:customer, FirstName:"New", LastName: "User1")

      get :index
      expect(assigns(:customers)).to eq([customer])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

end