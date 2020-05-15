class OriginsController < ApplicationController

  def new
  end

  def index
    @origins = Origin.all
  end

  def create
    @origins = Origin.new(origin_params)
    @origins.save
    redirect_to @origins
  end

  def show
    @origins = Origin.find(params[:id])
  end

  def edit
    @origins = Origin.find(params[:id])
  end

  def update
    @origins = Origin.find(params[:id])
    @origins.update(origin_params)
    redirect_to @origins
  end

  def destroy
    @origins = Origin.find(params[:id])
    @origins.destroy
    redirect_to @origins
  end

end

private

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end