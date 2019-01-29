class CupsController < ApplicationController

  # def index
  #   # test to see if we are at /parks/:id/rangers or /rangers
  #   if params.has_key?(:orign_id)
  #     # get all the rangers for a specific park
  #     @rangers = Ranger.where(park_id: params[:park_id] )
  #   else
  #     # get all rangers
  #     @rangers = Ranger.all
  #   end
  # end

  def home
    @cups = Cup.all
    @customers = Customer.all
  end

  def index
    @cups = Cup.all
  end

  def new
    @customers = Customer.all
  end

  def create
    @cup = Cup.new(cup_params)

    @cup.save
    redirect_to @cups_path
  end

  def show
    @cup = Cup.find(params[:id])
  end

private

  def cup_params
    params.require(:cup).permit(:name, :roast, :customer_ids => [])
  end
end