require 'rspec'
require 'spec_helper'
require 'rails_helper'

describe EmployeesController do
  # spec/controllers/employees_controller_spec.rb

  # ... other describe blocks omitted omitted
  describe "GET #index" do
    it "populates an array of employees" do
      employee = FactoryGirl.create(:employee, FirstName:"New", LastName: "User1", Email: "example@gmail.com")

      get :index
      expect(assigns(:employees)).to eq([employee])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested employee to @employee" do
      employee = FactoryGirl.create(:employee, FirstName:"New", LastName: "User1", Email: "example@gmail.com")
      get :show, id: employee
      expect(assigns(:employee)).to eq(employee)
    end

    it "renders the #show view" do
      get :show, id: FactoryGirl.create(:employee)
      expect(response).to render_template("show")
    end
  end

  describe "POST create" do
      it "creates a new employee" do
        expect{ FactoryGirl.create(:employee, FirstName:"New", LastName: "User1", Email: "example@gmail.com")}.to change(Employee,:count).by(1)
      end

      it "redirects to the new employee" do
        FactoryGirl.create(:employee, FirstName:"Newer", LastName: "User2", Email: "example@gmail.com")
        expect(response).to redirect_to Employee.last
      end

  end

  describe 'DELETE destroy' do

    it "deletes the employee" do
      emp1 = Employee.find(1)
      expect{
        delete :destroy, id: emp1
      }.to change(Employee,:count).by(-1)
    end

    it "redirects to employees#index" do
      emp1 = FactoryGirl.create(:employee, FirstName:"Newer", LastName: "User2", Email: "example@gmail.com")
      emp1 = Employee.find(2)
      delete :destroy, id: emp1
      expect(response).to redirect_to employee_url
    end
  end
  end

describe 'PUT update' do
  before :each do
    @employee = Factory(:employee, firstname: "Lawrence", lastname: "Smith")
  end

  context "valid attributes" do
    it "located the requested @employee" do
      put :update, id: @employee, employee: Factory.attributes_for(:employee)
      assigns(:employee).should eq(@employee)
    end

    it "changes @employee's attributes" do
      put :update, id: @employee,
          employee: Factory.attributes_for(:employee, firstname: "Larry", lastname: "Smith")
      @employee.reload
      @employee.firstname.should eq("Larry")
      @employee.lastname.should eq("Smith")
    end

    it "redirects to the updated employee" do
      put :update, id: @employee, employee: Factory.attributes_for(:employee)
      response.should redirect_to @employee
    end
  end
  end