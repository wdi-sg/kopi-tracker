class FarmsController < ApplicationController

  def index
  # test to see if we are at /parks/:id/rangers or /rangers
  if params.has_key?(:farm_id)
    # get all the rangers for a specific park
    @kopis = Kopi.where(farm_id: params[:farm_id] )
  else
    # get all rangers
    @kopis = Kopi.all
  end
end

  def new
  end

  def create
    @farm = Farm.new(farm_params)

    @farm.save
    redirect_to @farm
  end

  def show
    @farm = Farm.find(params[:id])
  end

private

  def farm_params
    params.require(:farm).permit(:location, :phone_number)
  end

end