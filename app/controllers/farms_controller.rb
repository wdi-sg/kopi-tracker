class FarmsController < ApplicationController

  def new
  end

  def index
  # test to see if we are at /parks/:id/rangers or /rangers
  if params.has_key?(:farm_id)

    @kopis = Kopi.where(farm_id: params[:farm_id] )
  else

    @kopis = Kopi.all
  end
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
    params.require(:farm).permit(:name, :description)
  end

end