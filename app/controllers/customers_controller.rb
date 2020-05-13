class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @kopis = Kopi.select(:id, :name)
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])

  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to @customer
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end