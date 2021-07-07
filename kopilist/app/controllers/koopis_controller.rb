class KoopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end


  def create
    @koopi = Koopi.new(koopi_params)
    @koopi.user_id = current_user.id
    @koopi.save
    redirect_to koopis_path
  end


  def show
    @koopi = Koopi.find(params[:id])
  end


  def edit
    @koopi = Koopi.find(params[:id])
 end


  def index
    # if params.has_key?(:id)
    #     @koopis = koopi.where(id: params[:id] )
    # else
      @koopis = Koopi.all
    # end
  end


private

  def koopi_params
    params.require(:koopi).permit(:name, :origin_id, :roast_id, :price, :user_id, :customer_ids => [])
  end
end