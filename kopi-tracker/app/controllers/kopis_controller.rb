class KopisController < ApplicationController

    def index
      @kopis = Kopi.all
    end

    def show
    end

    def new
      @roasts = Roast.all
      @farms = Farm.all
    end

    def create
      @kopi = Kopi.new(kopi_params)
      @kopi.save

      redirect_to kopis_path
    end

    def edit
      @kopi = Kopi.find(params[:id])
      @roasts = Roast.all
      @farms = Farm.all
    end

    def update
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)

      redirect_to kopis_path
    end

    def destroy
      @kopi = Kopi.find(params[:id])
      @kopi.destroy

      redirect_to kopis_path
    end


    private
      def kopi_params
        params.require(:kopis).permit(:name, :farm_id, :roast_id)
      end
end