class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]
    def index
        @kopis = Kopi.all

        if params.has_key?(:origin_id)
            
            @kopis = Kopi.where(origin_id: params[:origin_id] )
          else
            @kopis = Kopi.all
          end
    end
  
    def show  
        @kopi = Kopi.find(params[:id]) 
    end
  
    def new
        @origins = Origin.all
    end
  
    def edit
        @kopi = Kopi.find(params[:id])
        @origins = Origin.all
    end
  
    def create
        @kopi = Kopi.new(kopi_params)
        @kopi.user = current_user
        puts kopi_params
        
        if 
            @kopi.save
            redirect_to @kopi
        else
            @origins = Origin.all
            render 'new'
        end
    end
  
    def update
        @kopi = Kopi.find(params[:id])
      
        @kopi.update(kopi_params)
        redirect_to @kopi
    end
  
    def destroy
        @kopi = Kopi.find(params[:id])
        @kopi.destroy
      
        redirect_to root_path
    end

    # Jasmine: I changed the origin to origin_id which allowed the new kopi to save
    private
    def kopi_params
        params.require(:kopi).permit(:name, :roast, :origin_id)
    end
end