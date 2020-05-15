class OriginsController < ApplicationController

  def index

  end

  def new

  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save

    redirect_to :origins
  end

  def show
  end

private

  def origin_params
    params.require(:origin_new).permit(:location, :phone)
  end

end