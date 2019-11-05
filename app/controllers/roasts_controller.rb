class RoastsController < ApplicationController

    def index
    end

    def new
        # Render new roast form
    end

    def create
        @roast = Roast.new(roast_params)

        @roast.save
        # redirect_to @roasts
    end

    def show
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