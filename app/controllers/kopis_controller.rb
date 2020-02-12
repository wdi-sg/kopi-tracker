class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show]
  def index
    @kopi = Kopi.all
    if user_signed_in? 
      user_session[:kopi_cart] = "Awake"
    end
  end

  def new
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(song_params)

    @kopi.user = current_user
  
    if @kopi.save
      redirect_to @kopi
    else
      render 'new'
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
  end

  def update
    @kopi = Kopi.find(params[:id])
    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy
    redirect_to @kopi
  end


private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id)
  end

end 