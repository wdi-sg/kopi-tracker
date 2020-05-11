class FarmsController < ApplicationController
  def index
    @farms = Farm.all
    @kopis = Kopi.all
    puts @farms
    puts @kopis
  end

  def show
    @farm = Farm.find(params[:id])
    @kopis = Kopi.where(farm_id: params[:id])
  end

  def new
  end

  def edit
  end

  def create
        @farm = Farm.new(farm_params)

    @farm.save
    redirect_to @farm
  end

  def update
  end

  def destroy
  end

  private

  def farm_params
    params.require(:farm).permit(:location, :phone)
  end


end