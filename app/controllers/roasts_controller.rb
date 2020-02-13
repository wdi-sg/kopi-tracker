class RoastsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @roasts = Roast.all 
      end
      
    
      def create
        if current_user.admin?
            @roast = Roast.new(roast_params)
            @roast.user = current_user
          
            if @roast.save
              redirect_to @roast
            else
              render 'new'
            end  

        else redirect_to root_path    
        end
      end
    
    
      def new
        @roasts = Roast.all
      end
      
    
      def show
        @roast = Roast.find(params[:id])
      end
    
    
      def edit
        if current_user.admin?
            @roast = Roast.find(params[:id])
        else redirect_to root_path
        end
      end
    
    
      def update
        if current_user.admin?
            @roast = Roast.find(params[:id])
            @roast.update(roast_params)
            redirect_to @roast
        else redirect_to root_path
        end
      end
      
    
      def destroy
        if current_user.admin?
            @roast = Roast.find(params[:id])
            @roast.destroy
            redirect_to root_path
        else redirect_to root_path
        end 
      end
      
      private 
        def roast_params
          params.require(:roast).permit(:name)
        end        
end