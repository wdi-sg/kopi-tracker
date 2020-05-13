class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customers = Customer.all
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    @kopi = Kopi.find(kopi_params[:kopi_ids])
    @kopi.customers << @customer
    redirect_to @customer
  end

  def edit
  end

  def update
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to root_path
  end

  private
    def customer_params
      params.require(:customer).permit(:name)
    end

    def kopi_params
      params.require(:customer).permit(:kopi_ids => [])
    end
end