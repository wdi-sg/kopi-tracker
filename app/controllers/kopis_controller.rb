class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @kopi = Kopi.all
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
    if current_user.id == @kopi.user_id
     @roasts = Roast.all
     @origins = Origin.all
    else
      render plain: 'Not authorized!'
    end
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user_id = current_user.id
    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])
    if current_user.id == @kopi.user_id
      @kopi.update(kopi_params)
      redirect_to @kopi
    else
      render plain: 'Not authorized!'
    end
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    if current_user.id == @kopi.user_id
      @kopi.destroy
      redirect_to root_path
    else
      render plain: 'Not authorized!'
    end
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :origin_id,:roast_id,:user_id)
    end
end