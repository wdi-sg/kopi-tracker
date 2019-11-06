class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @kopis = Kopi.all
  end

  def new
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.save
    redirect_to kopis_path
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin_id)
    end

end