class CupsController < ApplicationController

  def index
    @cups = Cup.all
  end

  def new
    @customers = Customer.all
  end

  def create
    @cup = Cup.new(cup_params)

    @cup.user = current_user

    if @cup.save
      redirect_to @cup
    else
      render 'new'
    end
  end

  def show
    # deal with the case that we are trying to get a cup for a customer that doesn't exist

    @cup = Cup.find(params[:id])

    # if params[:customer_id].to_i != @cup.customer.id
    #   # do something
    # end
  end

private

  def cup_params
    params.require(:cup).permit(:name, :customer_id)
  end
end


