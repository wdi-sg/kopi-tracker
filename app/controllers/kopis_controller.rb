class KopisController < ApplicationController

  def index
    # test to see if we are at /farms/:id/kopis or /kopis
    if params.has_key?(:farm_id)
      # get all the kopis for a specific farm
      @kopis = Kopi.where(farm_id: params[:farm_id] )
    else
      # get all kopis
      @kopis = Kopi.all
    end
  end

  def new
    @farms = Farm.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @Kopi
  end

  def show

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
    end
  end

private

  def ranger_params
    params.require(:ranger).permit(:name, :park_id)
  end
end