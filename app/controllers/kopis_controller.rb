class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @kopis = Kopi.all.order(:name)
    end
  
    def show
        @kopi = Kopi.find(params[:id])
      end
  
    def new
      @kopis = Kopi.all
      @origins = Origin.all
      @roasts = Roast.all

    end
  
    def edit
      @kopis = Kopi.all
      @origins = Origin.all
      @roasts = Roast.all
      @kopi = Kopi.find(params[:id])
    end
  
    def create
      @kopi = Kopi.new(kopi_params)
  
      @kopi.save
      redirect_to @kopi
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
      params.require(:kopi).permit(:name, :price, :origin_id, :roast_id)
      end

  end
