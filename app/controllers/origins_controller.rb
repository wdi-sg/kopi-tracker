class OriginsController < ApplicationController

    def show
        @origin = Origin.find(params[:id])
    end
end
