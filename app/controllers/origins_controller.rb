class OriginsController < ApplicationController
  def index
     @origins = Origin.all

  end

  def show
     @origin = Origin.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @origin = Origin.new(origins_params)

    @origin.save
    redirect_to @origin
  end

  def update
  end

  def destroy
  end

  private

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end

end