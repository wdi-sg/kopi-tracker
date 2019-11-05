class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @kopis = Kopi.all
    @user = current_user
    # p "@@@@@@@@@", @user
    # p "%%%%%%%%%%%%%", current_user.kopi
    if current_user
      @kopis = current_user.kopi
    end
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    @kopi.save
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
    @roasts = Roast.all
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

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin_id)
  end
end
