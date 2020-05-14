class KopisController < ApplicationController

 before_action :authenticate_user!, :except => [ :show, :index ]
    def show
      @kopi = Kopi.find(params[:id])
      @roasts = Roast.find(@kopi.roast_id)
      @origin = Origin.find(@kopi.origin_id)
    end

    def edit
      @kopi = Kopi.find(params[:id])
    end

    def new
      @origins = Origin.all
       @roasts = Roast.all
    end

    def create
      @kopi = Kopi.new(kopi_params)
      @kopi.user_id = current_user
      @kopi.save
      redirect_to origins_path
    end

    def update
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)
      redirect_to origins_path

    end

    def destroy
      @kopi = Kopi.find(params[:id])
      @kopi.destroy
      redirect_to origins_path

    end


    private

    def kopi_params
      params.require(:kopi).permit(:name, :roast_id, :origin_id)
    end

end