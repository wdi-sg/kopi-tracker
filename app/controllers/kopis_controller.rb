class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
     @user = current_user
     @customer = Customer.all

  end

  def show
  @kopi = Kopi.find(params[:id])
  @customer = Customer.all

  end

  def new
    @roasts = Roast.all
    @origins = Origin.all

  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
    p @origins

  end

  def create
    # render plain: params[:article].inspect
    @kopi = Kopi.new(kopi_params)
    @kopi.user_id = current_user.id

    if @kopi.save
    redirect_to @kopi

  else
    puts "FAILLLLL"

    render 'new'
  end      # render plain: params[:kopi].inspect

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
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :user_id)
  end
end