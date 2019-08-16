class KopisController < ApplicationController
    def new
        @origins = Origin.all
    end
    def index
        @kopis = Kopi.all
    end
     def show
    # deal with the case that we are trying to get a origin for a kopi that doesn't exist

    @kopi = Kopi.find(params[:id])
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
