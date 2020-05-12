class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
  end

  def new
  end

  def create
    @kopi = Kopi.create(kopi_params)
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast_id, :origin_id, :price)
    end
end