class RoastsController < ApplicationController

    def index
        @roasts = Roast.all
    end

    def new
        @roast = Roast.new
    end

    def create
        @roast = Roast.new(roast_params)

        if @roast.save
            redirect_to @roast
        else
            render 'new'
        end
    end

    def show
        @roast = Roast.find(params[:id])
        @roasts = Roast.all
        @origins = Origin.all
        @kopis = Kopi.all
    end

    def edit
        @roast = Roast.find(params[:id])
    end


    def update
        @roast = Roast.find(params[:id])

        if @roast.update(roast_params)
            redirect_to @roast
        else
            render 'edit'
        end
    end

    def destroy
        @roast = Roast.find(params[:id])
        @roast.destroy

        redirect_to @roast
    end

    private
      def roast_params
        params.require(:roast).permit(:name)
      end
end
