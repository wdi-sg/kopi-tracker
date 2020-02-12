class OriginsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @origins = Origin.all
  end

  def new
  end

  def new_kopi
    @origin = Origin.find(params[:id])
  end

  def create
    @origin = Origin.create(origin_params)
    redirect_to root_path
  end

  def create_kopi
    @origin = Origin.find(params[:id])
    @kopi = Kopi.new(kopi_params)
    @kopi.origin = @origin
    @kopi.save
    redirect_to origin_path
  end

  def show
    @origin = Origin.find(params[:id])
    @kopis = @origin.kopi
  end

  private

  def origin_params
    params.require(:origin).permit(:location, :phone_number)
  end

  def kopi_params
    params.require(:kopi).permit(:name, :roast)
  end
end
