class CustomersController < ApplicationController

before_action :authenticate_user!, :except => [ :show, :index ]

def index
 @customers = Customer.all()
end


  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
      @customer = Customer.new(kopi_params)

      @customer.user = current_user

      @customer.save
      redirect_to @customer
  end

  def edit
    @customer = Customer.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def show


    @kopis = Customer.find( params[:id] ).kopis
    # render plain: params[:customer].inspect

    @customer = Customer.find(params[:id])

  end

  def update
      @customer = Customer.find(params[:id])

      @customer.update(kopi_params)
      redirect_to @customer
  end

private

  def kopi_params
    params.require(:customer).permit(:name, :roast_id, :origin_id)
  end
end