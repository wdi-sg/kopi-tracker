class KopisController < ApplicationController

  def new
    @farms = Farm.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def show

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
    end
  end

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

private

  def kopi_params
    params.require(:kopi).permit(:name, :farm_id)
  end
end