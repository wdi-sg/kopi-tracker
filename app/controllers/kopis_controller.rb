class KopisController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ] 

    def index
        @kopis = Kopi.all
    end 
    def new
        @roasts = Roast.all
        @origins = Origin.all
    end
    
    def create
        @kopi = Kopi.new(kopi_params)
        @kopi.user = current_user

        if @kopi.save
            redirect_to @kopi
          else
            render 'new'
          end
    end
    
    def show
        @kopi = Kopi.find(params[:id])
        @customers = Customer.where(id: @kopi.customer_ids)
    end

    private
    def kopi_params
        params.require(:kopi).permit(:name, :roast_id, :origin_id, :customer_ids => [])
    end
end
