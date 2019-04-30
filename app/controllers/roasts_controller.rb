class RoastsController < ApplicationController

  def index
    @roasts = Roast.all
  end
  def new
  end

  def create
    @roast = Roast.new(roast_params)

    @roast.save
    redirect_to @roast
  end

  def show
    @roast = Roast.find(params[:id])
  end
  private
  def roast_params
    params.require(:roast).permit(:name)
  end

end