class KopisController < ApplicationController

  def new
    @farms = Farm.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def show
    # deal with the case that we are trying to get a kopi for a farm that doesn't exist

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
      there is no such farm
    end
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :farm_id)
  end
end