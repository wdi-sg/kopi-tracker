class CustomersController < ApplicationController

	def index
    #@koffes = customer.all
  # test to see if we are at /parks/:id/rangers or /rangers
  #if params.has_key?(:customer_id)
    # get all the rangers for a specific park
    #@customers = customer.where(customer_id: params[:customer_id] )
  #else
    # get all rangers
    	@customers = Customer.all
  	#end
	end

  def new
    @koffees = Koffee.all
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id])
    redirect_to @customer
  end

  def edit
    @customer = Customer.find(params[:id])
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
    redirect_to customer_path
  end

private

  def customer_params
    params.require(:customer).permit(:name, :koffee_id => [])
  end
end