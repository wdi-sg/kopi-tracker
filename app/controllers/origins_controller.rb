class OriginsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]
    
    def index
        @origin = Origin.all
    end

    def new
        if( params[:roast_id].present? )
          @roast_id = params[:roast_id]
        end
        @roasts = Roast.all
      end

    def show
        @origin = Origin.find(params[:id])
    end

    def create
        @origin = Origin.new(origin_params)
        if @origin.save
            redirect_to @origin
        else 
            render 'new'  
         end

    end

    private 
    def origin_params
        params.require(:origin).permit(:location, :phone)
    end


 end
