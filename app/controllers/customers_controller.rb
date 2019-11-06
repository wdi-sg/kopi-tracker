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
    @customer = Customer.find_by(id: params[:id])
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :quantity, :kopi_ids => [])
  end
end
