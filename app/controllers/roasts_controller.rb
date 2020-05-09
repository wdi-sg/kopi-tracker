class RoastsController < ApplicationController

    before_action :authenticate_user!

    def index
        @roasts = Roast.all
        p @roasts.inspect
        render:index
    end

    def show
        @roasts = Roast.all
        render:index
    end

    def new
    end

    def edit
        @roast = Roast.find(params[:id])
    end

    def create
        @roast = Roast.new(roast_params)
        @roast.save
        @roasts = Roast.all
        render:index

    end

    def update
        @roast = Roast.find(params[:id])
        @roast.update(roast_params)
        @roasts = Roast.all
        render:index
    end

    def destroy
        @roast = Roast.find(params[:id])
        @roast.destroy
        @roasts = Roast.all
        render:index
    end

    private
        def roast_params
            params.require(:roast).permit(:name)
        end

end
