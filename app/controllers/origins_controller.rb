class OriginsController < ApplicationController
  def index
    @origins = Origin.all

  end

  def new
    @origins = Origin.all
  end

  def create
    @origin = Origin.new(origin_params)
    @origin.save

    redirect_to origins_path
  end

  def show
    @origin = Origin.find(params[:id])
    @kopis = @origin.kopi
  end

  def edit
    @origin = Origin.find(params[:id])
    @origins = Origin.all
  end

  def update
    @origin = Origin.find(params[:id])
    @origin.update(origin_params)
    @origin.save
    redirect_to origin_path(@origin)
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy
    redirect_to origins_path
  end

  private
  def origin_params
    params.require(:origin).permit(:name, :location, :phone)
  end
end
