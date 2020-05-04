class OriginsController < ApplicationController
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
  def index
  # test to see if we are at /origins/:id/kopis or /kopis
  if params.has_key?(:origin_id)
    # get all the kopis for a specific origin
    @kopis = Kopi.where(origin_id: params[:origin_id] )
  else
    # get all kopis
    @kopis = Kopi.all
  end
    end

private

    def origin_params
      params.require(:origin).permit(:name, :kopi_id)
   end
end