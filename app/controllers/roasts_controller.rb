class RoastsController < ApplicationController
  def index
    @roasts = Roast.all
  end

  def new
  end

  def create
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private def roast_params
    params.require(:roast).permit(:name)
  end
end
