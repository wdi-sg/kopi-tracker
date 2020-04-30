class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
  end

  def new
    @farms = Farm.all
  end

  def create
  @kopi = Kopi.new(kopi_params)

  @kopi.user = current_user

  if @kopi.save
    redirect_to @kopi
  else
    render 'new'
  end
  end

  def show
    # deal with the case that we are trying to get a kopi for a farm that doesn't exist

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
    end
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :farm_id)
    #dunno if it should be just farm instead of farm_id
    #If something doesn't work with the farms stuff LOOK HERE!!
  end
end