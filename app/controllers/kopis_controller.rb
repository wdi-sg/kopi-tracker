class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
  end

  def show
    @kopi = Kopi.find(params[:id])
    @origin = Origin.find(@kopi.origin_id)
  end

  def new
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params.merge(user_id: current_user.id))

    @kopi.save
    redirect_to @kopi
  end

  def edit
  end

  def update
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to root_path
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin_id, :price_per_pound)
    end
end