class CustomersController < ApplicationController
  def index
    # @customers = customer.all
    # if params.has_key?(:id)
    #   # get all the rangers for a specific park
    #   @customers = customer.where(id: params[:id] )
    # else
      # get all rangers
      @customers = Customer.all
    # end
  end

  def show
     # @customers = customer.where(id: params[:id] )
    @customer = Customer.find(params[:id])
  end

  def new
    @coffees = Coffee.all
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to root_path
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.update(customer_params)
    redirect_to @customer
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to root_path
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :coffee_ids => [])
  end
end