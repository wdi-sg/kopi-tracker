class KopiFarmsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  
  def index
      @kopi_farms = KopiFarm.order(id: :asc)
  end


  def show
      @kopi_farm = KopiFarm.find(params[:id])
      @kopis = Kopi.where(kopi_farm: @kopi_farm)
  end

  def new
  end

  def edit
      @kopi_farm = KopiFarm.find(params[:id])


  end

  def create
      @new_kopi_farm = KopiFarm.create(kopi_farm_params)
      redirect_to @new_kopi_farm
  end

  def update
      @kopi_farm = KopiFarm.find(params[:id])
      @kopi_farm.update(kopi_farm_params)
      redirect_to @kopi_farm  
end

  def destroy
      @kopi_farm = KopiFarm.find(params[:id])
      @kopi_farm.destroy
      redirect_to root_path
  end

end

private
  def kopi_farm_params
    params.require(:kopi_farm).permit(:location, :phone_num)
  end