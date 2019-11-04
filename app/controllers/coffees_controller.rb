class CoffeesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @coffee = Coffee.new(coffee_params)
    @coffee.save
    redirect_to @coffee
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  private

  def coffee_params
    params.require(:coffee).permit(:name, :roastedness, :origin)
  end
end
