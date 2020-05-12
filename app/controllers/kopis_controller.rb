class KopisController < ApplicationController

    def show

      @kopi = Kopi.find(params[:id])

    end

    def edit
      @kopi = Kopi.find(params[:id])
    end

    def new
      @origins = Origin.all
    end

    def create
      @kopi = Kopi.new(kopi_params)
      @kopi.user = current_user
      @kopi.save
      redirect_to kopis_path
    end

    def update
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)
      redirect_to origins_path

    end

    def destroy
      @kopi = Kopi.find(params[:id])
      @kopi.destroy
      redirect_to @kopi

    end


    private

    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin_id)
    end

end