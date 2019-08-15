class CustomersController < ApplicationController

  def index
    # if the request is from a nested route, get a subset of rangers
    if params.has_key?(:customer_id)
      # get all the rangers for a specific park
      # @rangers = Ranger.parks.where(park_ids: params[:park_id] )
      @customers = Kopi.find( params[:kopi_id] ).customer
    else
      # get all rangers
      @customers = Customer.all
    end
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end


  def new
    @customer = Customer.new
    @kopis = Kopi.all

  end

  def show
    @customer = Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:name,:phone,:kopi_ids => [])
  end
end