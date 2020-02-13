class FarmsController < ApplicationController

    def index
        @farms = Farm.all
    end

    def new

    end

    def create

    end

    def show

    end

    private

    def farm_params
        params.require(:farm).permit(:name)
    end




end