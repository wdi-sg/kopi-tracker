class CustomersController < ApplicationController

  def index
    # test to see if we are at /parks/:id/customers or /customers
    if params.has_key?(:park_id)
      # get all the customers for a specific park
      @customers = Customer.where(park_id: params[:park_id] )
    else
      # if we are at /customers, get all customers
      @customers = Customer.all
    end
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to root_path
    else
      render plain: "failed"
    end
  end

  def show

    @customer = Customer.find(params[:id])

  end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end