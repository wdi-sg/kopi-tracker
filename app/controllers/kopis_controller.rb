class KopisController < ApplicationController
  def index
    # # test to see if we are at /parks/:id/rangers or /rangers
    # if params.has_key?(:park_id)
    #   # get all the rangers for a specific park
    #   @rangers = Ranger.where(park_id: params[:park_id] )
    # else
    #   # get all rangers
    #   @rangers = Ranger.all
    # end

    @kopis = Kopi.all

  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
      @kopi = Kopi.new(kopi_params)

      @kopi.save
      redirect_to @kopi
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])
    @roast = Roast.find(@kopi.roast_id)
    @origin = Origin.find(@kopi.origin_id)
    # if params[:park_id].to_i != @kopi.park.id
    #   # do something
    # end
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end
end