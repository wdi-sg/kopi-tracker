class CustomersController < ApplicationController

  def new
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id])
  end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_id)
  end

end