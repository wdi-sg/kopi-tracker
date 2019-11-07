class CustomersController < ApplicationController

  before_action :authenticate_customer!

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
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

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to @customer
  end

  private def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end