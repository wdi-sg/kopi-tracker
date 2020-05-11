class CustomersController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    if params.has_key?(:kopi_id)
      @customers = Kopi.find(params[:kopi_id]).customers
    else
      @customers = Customer.all
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @kopis = Kopi.all
  end

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.update(customer_params)
    redirect_to @customer
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_path
  end

end

private
  def customer_params
    params.require(:customer).permit(:id, :name, :kopi_ids => [])
  end