class OriginsController < ApplicationController

  def index
    # test to see if we are at /kopis/:id/origins or /origins
    if params.has_key?(:kopi_id)
      # get all the origins for a specific kopi
      @origins = Origin.where(kopi_id: params[:kopi_id] )
    else
      # get all origins
      @origins = Origin.all
    end
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def show
    # deal with the case that we are trying to get a origin for a kopi that doesn't exist

    @origin = Origin.find(params[:id])

    if params[:kopi_id].to_i != @origin.kopi.id
      # do something
    end
  end

private

  def origin_params
    params.require(:origin).permit(:location, :phone, :kopi_id)
  end
end