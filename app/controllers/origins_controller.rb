class OriginsController < ApplicationController

  def new
  end

  def index
  end

  def create
    @origins = Origin.new(origin_params)
    @origins.save
    redirect_to @origins
  end

  def show
    @origins = Origin.find(params[:id])
  end

end

private

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end