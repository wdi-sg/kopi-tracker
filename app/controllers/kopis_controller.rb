class KopisController < ApplicationController
    before_action :authenticate_user!
    def index
        @kopi = Kopi.all
    end

    def show
        @kopi = Kopi.find(params[:id])
    end
  
    def new
        @origins = Origin.all

    end
  
    def edit
    end
  
    def create
        @kopi = Kopi.new(kopi_params)
        @kopi.user = current_user
        @kopi.save
        redirect_to @kopi
    end
  
    def update
    end
  
    def destroy
    end

private

    def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin_id)
    end

end