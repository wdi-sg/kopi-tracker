class CustomersController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to @customer
  end

  def index
    @customers = Customer.all
  end

  def new
    @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to @customer
  end

private

  def customer_params
    params.require(:customer).permit(:name)
  end
end
