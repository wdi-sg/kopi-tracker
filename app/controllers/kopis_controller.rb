# DAVID

class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @kopis = Kopi.all
        @roasts = Roast.all
        @origins = Origin.all

    end

    def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
    p @origins

  end

    def update
    @kopi = Kopi.find(params[:id])
    @kopi.update(kopi_params)

    redirect_to @kopi

  end

    def create
        @kopi = Kopi.new(kopi_params)
        @kopi.user = current_user
        if @kopi.save
            redirect_to @kopi
        else

        @roasts = Roast.all
        @origins = Origin.all
            render 'new'
         end
    end

    def new
        @kopis = Kopi.all
        @roasts = Roast.all
        @origins = Origin.all

    end

    def show
        @kopi = Kopi.find(params[:id])

    end


    private
    def kopi_params
        params.require(:kopi).permit(:name, :roast_id, :origin_id)
    end

end