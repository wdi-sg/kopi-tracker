class CustomersController < ApplicationController

  def new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    result = @customer.save
    if result == true
    redirect_to @customer
    else
        render plain @customer.error.inspect
    end
  end

   def show
    # deal with the case that we are trying to get a kopi for a farm that doesn't exist

    @customer = Customer.find(params[:id])

  end

   def index
    @customers = Customer.all
   end

private
  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end  

end