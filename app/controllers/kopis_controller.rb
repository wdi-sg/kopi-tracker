class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    # test to see if we are at /parks/:id/rangers or /rangers
    if params.has_key?(:origin_id)
      # get all the rangers for a specific park
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
      # get all rangers
      @kopis = Kopi.all
    end
  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
    @customers = Customer.all
  end

  def create
    @customers = Customer.all
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    result = @kopi.save

    if result == true
      redirect_to @kopi
    else
      render plain: @kopi.errors.inspect
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
    @customers = Customer.all
    # if params[:origin_id] != @kopi.origin.id
    #   render plain: @kopi.errors.inspect
    # end
  end

  def edit
    @origins = Origin.all
    @roasts = Roast.all
    @customers = Customer.all
    @kopi = Kopi.find(params[:id])
    @kopi.user = current_user
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

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :user_id, :customer_ids => [])
  end
end