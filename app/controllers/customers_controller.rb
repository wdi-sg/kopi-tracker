class CustomersController < ApplicationController

  #def index
   # @customers = Customer.all
  #end

  def new
    @customers = Customer.all
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    #render plain: params[:customer].inspect
     redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id])
  end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end