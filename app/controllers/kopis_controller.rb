class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index

    if current_user.try(:admin?)
      @kopis = Kopi.all
    else
      @kopis = Kopi.where(user_id:current_user)
    end
     # render plain: Kopi.all.inspect
  end

  def show
     @kopi = Kopi.find(params[:id])
     # render plain: params[:kopi].inspect

  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
    @customers = Customer.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
    @roasts = Roast.all


  end

  def create
    # render plain: params[:kopi].inspect
     @kopi = Kopi.new(kopi_params)
     @kopi.user = current_user

    if @kopi.save
      redirect_to @kopi
    else
      render 'new'
    end
  end

  def update
     @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy


    redirect_to kopis_path
  end


end


private
  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :user_id, :customer_ids=>[])
  end