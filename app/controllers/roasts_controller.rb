class RoastsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @roasts = Roast.all
    end

    def new
        if current_user.try(:admin?)
        else
            redirect_to roasts_path
        end
    end

    def create
        if current_user.try(:admin?)
            @roast = Roast.new(roast_params)
            @roast.user = current_user

            @roast.save
            redirect_to roasts_path
        else
            redirect_to roasts_path
        end
    end

    def show

    end

    private

    def roast_params
        params.require(:roast).permit(:roastedness)
    end




end