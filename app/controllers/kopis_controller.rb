class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]
    def index
        
            @kopis = Kopi.all
        

    end
  
    def show
    end
  
    def new
    end
  
    def edit
        @kopi = Kopi.find(params[:id])
    end
  
    def create
         render plain: params[:kopi].inspect
    end
  
    def update
        @kopi = Kopi.find(params[:id])

        @kopi.update(kopi_params)
        redirect_to @kopi
    end
  
    def destroy
    end
  end
  