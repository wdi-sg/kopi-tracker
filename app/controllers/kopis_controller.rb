class KopisController < ApplicationController

    def index
        @kopis = Kopi.all
    end

    def new
        @origins = Origin.all
    end

    def create
        @kopi = Kopi.new(kopi_params)
        # render plain: kopi_params
        @kopi.save
        redirect_to @kopi
    end

    def show
        @kopi = Kopi.find(params[:id])
    end

    private
      def kopi_params
        params.require(:kopi).permit(:name, :roast, :origin_id)
      end
end