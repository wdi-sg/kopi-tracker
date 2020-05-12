class RoastsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
    def index
      @roasts = Roast.all
    end
  
    def show
      @roast = Roast.find(params[:id])
      @kopis = Kopi.where(roast_id: params[:id])
    end
  
    private
  
    def roast_params
      params.require(:roast).permit(:name)
    end
  end