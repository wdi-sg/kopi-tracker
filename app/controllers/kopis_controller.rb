class KopisController < ApplicationController
    def index
        @kopis = Kopi.all
    end

    def show

    end
  
    def new
        @origins = Origin.all

    end
  
    def edit
    end
  
    def create
        @kopi = Kopi.new(kopi_params)

        @kopi.save
        redirect_to @kopi
    end
  
    def update
    end
  
    def destroy
    end

private

    def kopi_params
    params.require(:kopi).permit(:name, :roast, :origins_id)
    end

end