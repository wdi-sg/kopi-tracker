class OrignsController < ApplicationController

  # def index
  #   # test to see if we are at /parks/:id/rangers or /rangers
  #   if params.has_key?(:park_id)
  #     # get all the rangers for a specific park
  #     @rangers = Ranger.where(park_id: params[:park_id] )
  #   else
  #     # get all rangers
  #     @rangers = Ranger.all
  #   end
  # end

  def index
    @origns = Orign.all
  end

  def new
  end

  def create
    @orgin = Orign.new(park_params)

    @orign.save
    redirect_to @orgin
  end

  def show
    @orign = Orign.find(params[:id])
  end

private

  def park_params
    params.require(:orign).permit(:location, :phone)
  end

end