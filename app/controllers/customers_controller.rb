class CustomersController < ApplicationController

  def new
    @kopis = Kopi.all
  end

  def index
    @customers = Customer.all
    @kopis = Kopi.all
  end

  def show
     @customer = Customer.find(params[:id])
   end

  def create

     @customer = Customer.new(customer_params)
     @customer.save
     redirect_to@customer
  end


  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end