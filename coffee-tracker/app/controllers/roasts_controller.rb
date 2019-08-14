class RoastsController < ApplicationController

  def index
    @roasts = Roast.all
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

  def roast_params
    params.require(:roast).permit(:name)

  end

end