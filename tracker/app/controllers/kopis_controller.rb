class KopisController < ApplicationController
    def index
      @kopis = Kopi.all
    end

    def new

      @origins = Origin.all
      @origin = Origin.find(params[:id])

      @roasts = Roast.all

    end

    def create
      #render plain: params[:kopis].inspect

      @kopi = Kopi.new(kopi_params)
      id = @kopi.origin_id
      @kopi.save

      redirect_to origin_path(id)

    end

    def show
      @kopi = Kopi.find(params[:id])
    end

    def edit
      @kopi = Kopi.find(params[:id])
      @origins = Origin.all
      @roasts = Roast.all
    end

    def update
      @kopi = Kopi.find(params[:id])
      id = @kopi.origin_id
      @kopi.update(kopi_params)

      redirect_to origin_path(id)
    end

    def destroy
      @kopi = Kopi.find(params[:id])
      id = @kopi.origin_id
      @kopi.destroy

      redirect_to origin_path(id)
    end



    private

      def kopi_params
        params.require(:kopis).permit(:name, :origin_id, :roast_id)
      end

end