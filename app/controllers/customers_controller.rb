class CustomersController < ApplicationController
  def index
    if params.has_key?(:coffee_id)
      # get all the rangers for a specific park
      @coffee = Coffee.find(params[:coffee_id])
      @customers = @coffee.customers
    else
      # get all rangers
      @customers = Customer.all
  end
  end

  def show
  end

  def new
    @coffees = Coffee.all
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  def customer_params
  params.require(:customer).permit(:name, :coffee_ids => [])
end
end