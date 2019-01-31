class RoastsController < ApplicationController
    def show
        @roast = Roast.find(params[:id])
    end
end
