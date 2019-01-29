class CustomersController < ApplicationController

  # def index
  #   # test to see if we are at /parks/:id/rangers or /rangers
  #   if params.has_key?(:park_id)
  #     # get all the rangers for a specific park
  #     @rangers = Ranger.where(park_id: params[:park_id] )
  #   else
  #     # get all rangers
  #     @rangers = Ranger.all
  #   end
  # end

  def index
    @customers = Customer.all
    @cups = Cup.all
  end

  def new
    @cups = Cup.all
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to customers_path
  end

  def show
    @customer = Customer.find(params[:id])
  end

private

  def customer_params
    params.require(:customer).permit(:name, :phone, :cup_ids => [])
  end

end