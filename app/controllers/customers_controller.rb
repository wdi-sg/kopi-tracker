class CustomersController < ApplicationController

  before_action :authenticate_customer!

  def index
    @customer = Customer.all.order('id')

  end


  def edit

    @customer = Customer.find(params[:id])

    @kopis = Kopi.all

  end


  def update

    @customer = Customer.find(params[:id])

    @customer.update(customer_params)
    redirect_to @customer

  end


  def show
    @customer = Customer.find(params[:id])
  end


private

  def customer_params
    params.require(:customer).permit(:kopi_ids => [])
  end

end