class CustomersController < ApplicationController

  def index
    @cups = Cup.all
  end

  def new
    @customers = Customer.all
  end

  def create
    @cup = Cup.new(cup_params)

    @cup.save
    redirect_to @cup
  end

  def show
    @cup = cup.find(params[:id])
  end

private

  def cup_params
    params.require(:cup).permit(:location, :phone)
  end

end