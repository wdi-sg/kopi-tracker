class OriginsController < ApplicationController

  def index
  end

  def new
    @origin = Origin.all
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def show
    @origin = Origin.find(params[:id])
  end

private

  def origin_params
    params.require(:origin).permit(:location, :phonenumber)
  end

end