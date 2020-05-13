class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist
    @customer = Customer.find(params[:id])
  end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end