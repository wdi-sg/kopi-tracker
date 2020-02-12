class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    id = current_user.id
    @kopi = Kopi.where(user_id: id)
  end
  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def edit
     @kopi = Kopi.find(params[:id])
     @roasts = Roast.all
     @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user_id = current_user.id
    @kopi.save
    redirect_to @kopi
  end

  def update
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)
      redirect_to @kopi
  end

  def destroy
  end
  private
    def kopi_params
      params.require(:kopi).permit(:name, :origin_id,:roast_id,:user_id)
    end
end