class OriginsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
  # test to see if we are at /parks/:id/rangers or /rangers
  if params.has_key?(:roast_id)
    # get all the rangers for a specific park
    @origins = Origin.where(roast_id: params[:roast_id] )
  else
    # get all rangers
    @origins = Origin.all
  end
end

    def show
    # deal with the case that we are trying to get a kopi for a roast that doesn't exist
# RECHECK, LOGIC SEEMS TO BE WRONG
    @origin = Origin.find(params[:id])

    # if params[:roast_id].to_i != @origin.roast.id
    #   render plain: "Location not found on planet earth!"
    #   # do something
    # end
  end

  def new
    # @roasts = Roast.all
    # @origins = Origin.all
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def edit
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