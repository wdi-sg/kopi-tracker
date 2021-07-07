class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
  # test to see if we are at /parks/:id/rangers or /rangers
    if params.has_key?(:roast_id)
      # get all the rangers for a specific park
      @kopis = Kopi.where(roast_id: params[:roast_id] )
    else
      # get all rangers
      @kopis = Kopi.all
      @roasts = Roast.all
      @origins = Origin.all
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
    @customers = Customer.all
  end

  def create
    if current_user.try(:admin?)
      @kopi = Kopi.new(kopi_params)
      @kopi.user_id = current_user.id
      @kopi.save
      redirect_to @kopi
    end
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def update
    if current_user.try(:admin?)
      @kopi = Kopi.find(params[:id])
      # .update also a method
      @kopi.update(kopi_params)
      redirect_to @kopi
    else
      redirect_to @kopi
      # how to show you are not the admin?
    end
  end

  def destroy
    if current_user.try(:admin?)
      @kopi = Kopi.find(params[:id])
      @kopi.destroy
      redirect_to root_path
    else
      redirect_to @kopi
      # don't allow user to delete
    end
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :customer_ids => [])
  end
end