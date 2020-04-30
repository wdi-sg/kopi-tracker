class FarmsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @farms = Farm.all
  end

  def new
  end

  def create
    @farm = Farm.new(farm_params)

    @farm.user = current_user

    if @farm.save
      redirect_to @farm
    else
      render 'new'
    end
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy

    redirect_to farms_path
  end

private

  def farm_params
    params.require(:farm).permit(:location, :phone_number)
  end

end