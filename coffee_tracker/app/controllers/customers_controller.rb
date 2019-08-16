class CustomersController < ApplicationController

 def index
    # if the request is from a nested route, get a subset of customers
    if params.has_key?(:kopi_id)
      # get all the customers for a specific kopi
      @kopis = Kopi.find( params[:kopi_id])
       @customers = Kopi.find( params[:kopi_id] ).customers

    else
      # get all customers
      @customers = Customer.all
    end
  end


 def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end


  def new
    @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
  end


end