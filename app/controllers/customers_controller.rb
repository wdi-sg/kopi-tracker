class CustomersController < ApplicationController

  def new
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])

  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end



  private
    def customer_params
      params.require(:customer).permit(:name)
    end
end
