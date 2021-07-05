class OriginsController < ApplicationController
    def index
      @origins = Origin.all
    end
    
    def show
      @origin = Origin.find(params[:id])
    end
    
    def new
    end
    
    def edit
      @origin = Origin.find(params[:id])
    end
    
    def create
       @origin = Origin.new(origin_params)
    
       @Origin.save
       redirect_to @origin
    end
    
    def update
      @origin = Origin.find(params[:id])
      @Origin.update(origin_params)
      redirect_to @origin
    end
    
    def destroy
      @origin = Origin.find(params[:id])
      @Origin.destroy
    
      redirect_to root_path
    end
    
    private
    def origin_params
        params.require(:origin).permit(:location, :phone)
    end
      
    end