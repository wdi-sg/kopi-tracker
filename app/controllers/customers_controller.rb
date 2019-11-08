class CustomersController < ApplicationController


  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])

  end

  def new
    @customer = Customer.new
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

  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end


  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end
