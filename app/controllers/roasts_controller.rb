class RoastsController < ApplicationController
    before_action :authenticate_user!, :except => [ :show]
    def index
      @roast = Roast.all
    end
  
    def new
        if current_user.admin? 
            user_session[:kopi_cart] = "ExtraAwake"
      @roasts = Roast.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @roasts }
      end
    end
  
    def create
        if current_user.admin? 
      @roast = Roast.new(roast_params)
      @roast.save
      redirect_to @roast
      end
    end
  
    def show
      @roast = Roast.find(params[:id])
      
    end
  
    def edit
        if current_user.admin? 
      @roast = Roast.find(params[:id])
      @roast = Roast.all
        end
    end
  
    def update
        if current_user.admin? 
      @roast = Roast.find(params[:id])
      @roast.update(roast_params)
      redirect_to @roast
        end
    end
  
    def destroy
        if current_user.admin? 
      @roast = Roast.find(params[:id])
      @roast.destroy
      redirect_to @roast
        end
    end
  
  
  private
  
    def roast_params
      params.require(:roast).permit(:name, :roast_id)
    end
  
  end 