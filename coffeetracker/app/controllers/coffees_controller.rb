class CoffeesController < ApplicationController

    def index
        @coffees = Coffee.all
    end

    def new
        @origins = Origin.all
    end

    def create
        @coffee = Coffee.new(coffee_params)
        @coffee.save
        redirect_to @coffee

    end

    def show
        # deal with the case that we are trying to get a coffee for an origin that doesn't exist

        @coffee = Coffee.find(params[:id])

        #if params[:origin_id].to_i != @coffee.origin.id
        # do something
        #end
    end

    private
    def coffee_params
        params.require(:coffee).permit(:name, :origin_id)
    end
end