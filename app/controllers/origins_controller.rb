class OriginsController < ApplicationController
  def index
    @origins = Origin.all
  end

  def show
    @origins = Origin.find(params[:id])
  end

  def new
  end

  def create
    @origins = Origin.new(origin_params)

    @origins.save
    redirect_to root_path
  end



private

  def origin_params
    params.require(:origin).permit(:location, :number)
  end

end