class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @kopis = Kopi.all
    end
  
    def show
        @kopi = Kopi.find(params[:id])
      end
  
    def new
    end
  
    def edit
    end
  
    def create
    end
  
    def update
    end
  
    def destroy
    end
  end
