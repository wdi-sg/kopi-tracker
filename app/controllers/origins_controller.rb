class OriginsController < ApplicationController

  def new
    @origin = Origin.new
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def show
    @origin = Origin.find(params[:id])
  end


  def index
  # test to see if we are at /parks/:id/rangers or /rangers
  if params.has_key?(:origin_id)
    # get all the rangers for a specific park
    @kopis = Kopi.where(origin_id: params[:origin_id] )
  else
    # get all rangers
    @kopis = Kopi.all
  end
end

private

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end

end