class KopiFarmsController < ApplicationController
  def index
      @kopi_farms = KopiFarm.all
  end


  def show
      @kopi_farm = KopiFarm.find(params[:id])
      @kopis = Kopi.where(origin_id: @kopi_farm.id)
  end

  def new
  end

  def edit

  end

  def create
  end

  def update
  end

  def destroy
  end

end

private
  def kopi_farm_params
    params.require(:kopi_farm).permit(:location, :phone_num)
  end