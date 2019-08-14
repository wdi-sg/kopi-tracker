class OriginsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @origins = Origin.all
  end

  def new
    @origin = Origin.new
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save!
    redirect_to @origin

  end

  def show
    @origin = Origin.find(params[:id])
  end

private

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end

end