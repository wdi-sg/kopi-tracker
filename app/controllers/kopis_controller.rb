class KopisController < ApplicationController

    def index
        @kopis = Kopi.all
        @roasts = Roast.all
        @origins = Origin.all

    end

    def create
        @kopi = Kopi.new(kopi_params)
        @kopi.save
        redirect_to @kopi
    end

    def new
        @kopis = Kopi.all
        @roasts = Roast.all
        @origins = Origin.all

    end
    
    def show
        @kopi = Kopi.find(params[:id])

    end


    private 
    def kopi_params
        params.require(:kopi).permit(:name, :roast_id, :origin_id)
    end

end
