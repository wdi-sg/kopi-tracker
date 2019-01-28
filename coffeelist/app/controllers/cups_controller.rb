class CupsController < ApplicationController

  # def index
  #   # test to see if we are at /parks/:id/rangers or /rangers
  #   if params.has_key?(:orign_id)
  #     # get all the rangers for a specific park
  #     @rangers = Ranger.where(park_id: params[:park_id] )
  #   else
  #     # get all rangers
  #     @rangers = Ranger.all
  #   end
  # end

  def index
    @cups = Cup.all
  end

  def new
    @cup = Cup.all
  end

  def create
    @cup = Cup.new(cup_params)

    @cup.save
    redirect_to @cup
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @cup = Cup.find(params[:id])

    if params[:orign_id].to_i != @cup.orign.id
      # do something
    end
  end

private

  def ranger_params
    params.require(:cup).permit(:name, :roast, :orign_id)
  end
end