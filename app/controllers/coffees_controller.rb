class CoffeesController < ApplicationController 
    def index
        @coffees = Coffee.all
    end
    
    def new
        @origins = Origin.all
        @roasts = Roast.all
        @customers = Customer.all
    end
    
    def create
        @coffee = Coffee.new(coffee_params)
        @coffee.save
        redirect_to @coffee
    end
    
    def show
        @coffee = Coffee.find(params[:id])
    end

    private
    def coffee_params
        params.require(:coffee).permit(:name, :price, :origin_id, :roast_id, :customer_ids => [])
    end
end