class OriginsController < ApplicationController

  def index
    @origins = Origin.all
  end

  # def new
  #   @roasts = Roast.all
  #   @origins = Origin.all
  # end

  # def create
  #   # render plain: params[:post].inspect
  #   @kopi = Kopi.new(kopi_params)

  #   @kopi.save
  #   redirect_to @kopi
  # end

  # def show
  #   @kopi = Kopi.find(params[:id])
  # end

private

  def origin_params
    params.require(:origin).permit(:name, :location, :phone)

  end

end