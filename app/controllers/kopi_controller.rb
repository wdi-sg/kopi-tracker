class KopiController < ApplicationController
    def index
        @kopi = Kopi.all
    end
  
    def show
        @kopi = Kopi.find(params[:id])
    end
  
    def new
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
  end