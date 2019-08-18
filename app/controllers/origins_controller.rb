class OriginsController < ApplicationController

before_action :authenticate_user!

    def index
        @origins = Origin.all
    end

    def new
        @origin = Origin.new
    end

    def create
        @origin = Origin.new(origin_params)

        if @origin.save
            redirect_to @origin
        else
            render 'new'
        end
    end

    def show
        @origin = Origin.find(params[:id])
    end

    def edit
        @origin = Origin.find(params[:id])
        @origins = Origin.all
        @roasts = Roast.all
    end


    def update
        @origin = Origin.find(params[:id])

        if @origin.update(origin_params)
            redirect_to @origin
        else
            render 'edit'
        end
    end

    def destroy
        @origin = Origin.find(params[:id])
        @origin.destroy

        redirect_to @origin
    end

private
      def origin_params
        params.require(:origin).permit(:name)
      end
end