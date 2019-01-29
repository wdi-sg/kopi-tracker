class CoffeesController < ApplicationController

    def new
        @farms = Farm.all
        @roasts = Roast.all
    end
    
    def create
        @coffee = Coffee.new(coffee_params)
    
        @coffee.save
        redirect_to @coffee
    end

    def edit
        @coffee = Coffee.find(params[:id])
    end
    
    def show
        # deal with the case that we are trying to get a coffee for a farm that doesn't exist
    
        @coffee = Coffee.find(params[:id])
    
        if params[:farm_id].to_i != @coffee.farm.id
        # do something
        end
    end
    
    private
    def coffee_params
        params.require(:coffee).permit(:name, :farm_id)
    end
end
