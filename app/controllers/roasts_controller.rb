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
    end

    def update
    end

    def destroy
    end

    private
        def roast_params
            params.require(:roast).permit(:name)
        end
end