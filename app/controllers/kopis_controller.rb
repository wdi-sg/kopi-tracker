class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
  end

  def new
    @farms = Farm.all
    @roasts = Roast.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    #render plain: params.inspect
    @kopi.user = current_user
    @kopi.save
     redirect_to @kopi
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
    end
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :farm_id, :user_id)
  end
end