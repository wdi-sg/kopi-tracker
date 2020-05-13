class CustomersController < ApplicationController
  
  def index
    order = request.query_parameters[:order]
    puts order
    @customers = Customer.all
    if order == "asc"
      @customers = @customers.sort_by{ |customer| customer.kopis.length }
    elsif order == "desc"
      @customers = @customers.sort_by{ |customer| -customer.kopis.length }
    else 
      @customers
    end
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
    # @customer.user = current_user
    @customer.save
    redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id])
    
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

  private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
end
