class RoastsController < ApplicationController

    def index
        @roasts = Roast.all
    end

    def new
        # Render new roast form
    end

    def create
        @roast = Roast.new(roast_params)

        @roast.save
        redirect_to @roast
    end

    def show
        @roast = Roast.find(params[:id])
    end

    def edit
        @roast = Roast.find(params[:id])
    end

    def update
        @roast = Roast.find(params[:id])

        @roast.update(roast_params)
        redirect_to @roast
    end

    def destroy
    end

    private
        def roast_params
            params.require(:roast).permit(:name)
        end
end