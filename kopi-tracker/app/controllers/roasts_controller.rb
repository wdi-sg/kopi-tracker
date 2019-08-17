class RoastsController < ApplicationController

    def index
      @roasts = Roast.all
    end

    def show
    end

    def new
    end

    def create
      @roast = Roast.new(roast_params)
      @roast.save

      redirect_to roasts_path
    end

    def edit
      @roast = Roast.find(params[:id])
    end

    def update
      @roast = Roast.find(params[:id])
      @roast.update(roast_params)

      redirect_to roasts_path
    end

    def destroy
      @roast = Roast.find(params[:id])
      @roast.destroy

      redirect_to roasts_path
    end


    private
      def roast_params
        params.require(:roasts).permit(:roastedness)
      end
end