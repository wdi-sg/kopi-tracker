class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
    @farms = Farm.all
    @roasts = Roast.all
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @farms = Farm.all
    @roasts = Roast.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @farms = Farm.all
    @roasts = Roast.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.user = current_user

    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to root_path
  end

end

private
  def kopi_params
    params.require(:kopi).permit(:name, :farm_id, :roast_id, :pricePerPound)
  end