class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def index
    if user_signed_in?
      @kopis = Kopi.where(user_id: [current_user.id])
    else
      @kopis = Kopi.all
    end
    #@kopis = Kopi.where(user_id: current_user.id).take
  end

  def create
    @kopis = Kopi.new(kopi_params)
    @kopis.user = current_user

    if @kopis.save
      redirect_to @kopis
    else
      render 'new'
    end

  end

  def edit
    @kopis = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def update
    @kopis = Kopi.find(params[:id])
    @kopis.update(kopi_params)
    redirect_to @kopis
  end

  def show
    @kopis = Kopi.find(params[:id])
    @roasts = Roast.find(@kopis.roast_id)
    @origins = Origin.find(@kopis.origin_id)
  end

    def destroy
    @kopis = Kopi.find(params[:id])
    @kopis.destroy

    redirect_to root_path
  end

end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end