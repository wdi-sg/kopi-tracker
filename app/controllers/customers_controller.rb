class CustomersController < ApplicationController

  def index
    @kopis = Kopi.all
    @customer = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
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
  end

  def update
    @customer = Customer.find(params[:id])
    redirect_to @kopi
  end

  def destroy
      @customer = Customer.find(params[:id])
      @customer.destroy
      redirect_to root_path
  end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end