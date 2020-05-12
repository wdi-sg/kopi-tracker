class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
    def index
      @kopis = Kopi.all
    end
  
    def new
        @farms = Farm.all
        @roasts = Roast.all
    end
  
    def create
      @kopi = Kopi.new(kopi_params)
      @kopi.save
      redirect_to @kopi
    end
  
    def show
      @kopi = Kopi.find(params[:id])
      @farm = Farm.find(@kopi.farm_id)
      @roast = Roast.find(@kopi.roast_id)
    end

    def destroy
      @kopi = Kopi.find(params[:id])
      @kopi.destroy
      redirect_to kopis_path
    end
  
    private
  
    def kopi_params
      params.require(:kopi).permit(:name, :roast_id, :farm_id)
    end
  end