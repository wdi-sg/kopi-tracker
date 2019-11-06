class CustomersController < ApplicationController
  def index
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to @customer
  end

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end

  private 
  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
