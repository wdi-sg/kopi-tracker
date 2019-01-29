class CupsController < ApplicationController
  def index
    @cups = Cup.all
    @customers = Customer.all
  end

  def new
    @rangers = Ranger.all
    @parks = Park.all
  end

  def create
    @park = Park.new(park_params)
    @park.save
    redirect_to @park
  end
  def show
    @cup = Cup.find(params[:id])
  end

private

  def park_params
    params.require(:park).permit(:name, :description,:ranger_ids => [])
  end

end