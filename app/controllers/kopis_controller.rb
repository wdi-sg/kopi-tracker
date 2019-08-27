class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    # test to see if we are at /farms/:id/kopis or /kopis
    if params.has_key?(:farm_id)
      # get all the kopis for a specific farm
      @kopis = Kopi.where(farm_id: params[:farm_id] )
    else
      # get all kopis
      @kopis = Kopi.all
    end
  end

  def show

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
    end
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

  def edit
    @kopi = Kopi.find(params[:id])
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to root_path
  end


private

  def kopi_params
    params.require(:kopi).permit(:name, :roastedness, :farm_id)
  end
end