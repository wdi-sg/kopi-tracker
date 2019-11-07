class RoastsController < ApplicationController

    def new
        if( params[:roast_id].present? )
          @roast_id = params[:roast_id]
        end
        @roasts = Roast.all
      end

    def show
        @roast = Roast.find(params[:id])
      end

    private

    def ranger_params
        params.require(:roast).permit(:name, :roast_id, :origin_id)
    end
end
