class CoffeesController < ApplicationController

  def index
  # test to see if we are at /parks/:id/rangers or /rangers
    if params.has_key?(:origin_id)
    # get all the rangers for a specific park
      @coffees = Coffee.where(origin_id: params[:origin_id] )
    else
      # get all rangers
      @coffees = Coffee.all
    end
  end

  def new
    @origins = Origin.all
  end

  def create
    #render plain: params[:coffee].inspect
    @coffee = Coffee.new(coffee_params)

    @coffee.save
    redirect_to @coffee
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @coffee = Coffee.find(params[:id])

    if params[:coffee_id].to_i != @ranger.park.id
      # do something
    end
  end

private
  def coffee_params
    params.require(:coffee).permit(:name, :roast, :origin_id)
  end
end