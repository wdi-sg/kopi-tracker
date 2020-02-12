class RoastsController < ApplicationController
  def index
     @roasts = Roast.all

  end

  def show
     @roast = Roast.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @roast = Roast.new(roasts_params)

    @roast.save
    redirect_to @roast
  end

  def update
  end

  def destroy
  end

  private

  def origin_params
    params.require(:roast).permit(:name)
  end

end