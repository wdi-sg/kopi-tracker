class FarmsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @farms = Farm.all
    @kopis = Kopi.all
    @roasts = Roast.all

    puts @farms
    puts @kopis
    puts "$21231313131232132323123131323132131312"

  end

  def show
    @farm = Farm.find(params[:id])
    @kopis = Kopi.where(farm_id: params[:id])
  end

  def new
  end


  def create
        @farm = Farm.new(farm_params)

    @farm.save
    redirect_to @farm
  end


  def edit
    @farm = Farm.find(params[:id])
  end

  def update
      @farm = Farm.find(params[:id])

  @farm.update(farm_params)
  redirect_to @farm
  end

  def destroy
      @farm = Farm.find(params[:id])
  @farm.destroy

  redirect_to root_path
  end

  private

  def farm_params
    params.require(:farm).permit(:location, :phone)
  end


end