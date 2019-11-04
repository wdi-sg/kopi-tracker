class CustomersController < ApplicationController
  def index
  end

  def new
    @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts @customer.kopis
    @customer.save
    redirect_to @customer
  end

  private
  def customer_params
    puts params.inspect
    params.require(:customer).permit(:name, :kopi_ids => [])
  end

end
