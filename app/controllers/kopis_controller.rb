class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @kopis = Kopi.all
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
    end
  
    def create
      @kopi = Kopi.new(kopi_params)
  
      @kopi.save
      redirect_to @kopi
    end
  
    def update
    end
  
    def destroy
    end

    private
  
      def kopi_params
      params.require(:kopi).permit(:name, :price, :origin_id, :roast_id)
      end

  end
