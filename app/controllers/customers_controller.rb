class CustomersController < ApplicationController
  # before_action :set_customer, only: [:show, :edit, :update, :destroy]
# 
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
    @kopis = Kopi.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])
  end

  # GET /customers/new
  def new
    @customers = Customer.all
    @kopis = Kopi.all
  end

  def create

    @customer = Customer.new(customers_params)

    @customer.save
    redirect_to @customer

  end

   def update
    @customer = Customer.find(params[:id])
    @customer.update(customers_params)

    redirect_to @customer

  end


  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
    @kopi = Kopi.all
    @roasts = Roast.all
    @origins = Origin.all
    p @customer
  end

    def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to @customer

  end

    private
def customers_params
  params.require(:customer).permit(:name, :kopi_ids => [])
end

end