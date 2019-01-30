class CoffeesController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]

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
        @roasts = Roast.all
        @farms = Farm.all
    end

    def update
        @coffee = Coffee.find(params[:id])
        @coffee.update(coffee_params)
        redirect_to @coffee
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
        params.require(:coffee).permit(:name, :roast, :farm_id)
    end
end
