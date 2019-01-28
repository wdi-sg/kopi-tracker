class CoffeesController < ApplicationController
  def index
    # @coffees = Coffee.all
    if params.has_key?(:origin_id)
      # get all the rangers for a specific park
      @coffees = Coffee.where(origin_id: params[:origin_id] )
    else
      # get all rangers
      @coffees = Coffee.all
    end
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  def new
    @origins = Origin.all
  end

  def edit
    @coffee = Coffee.find(params[:id])
  end

  def create
    @origins = Origin.all

    @coffee = Coffee.new(coffee_params)
    @coffee.save
    redirect_to @coffee
  end

  def update
    @coffee = Coffee.find(params[:id])

    @coffee.update(coffee_params)
    redirect_to @coffee
  end

  def destroy
    @coffee = Coffee.find(params[:id])
    @coffee.destroy

    redirect_to root_path
  end

  private
  def coffee_params
    params.require(:coffee).permit(:name, :roast, :origin)
  end
end