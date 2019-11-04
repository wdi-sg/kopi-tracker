class OriginsController < ApplicationController
    def index
        @origin = Origin.all
    end

    def new

    end

    def show
        @origin = Origin.find(params[:id])
    end

    def create
        @origin = Origin.new(origin_params)
        @origin.save
        redirect_to @origin
    end

    private 
    def origin_params
        params.require(:origin).permit(:location, :phone)
    end


 end
