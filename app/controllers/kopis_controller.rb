class KopisController < ApplicationController

  def index
    @kopis = Kopi.all
  end

  def new
    @origins = Origin.all
    @origin_id = Origin
  end

   def create
      @kopi = Kopi.new(kopi_params)

      @kopi.save
      redirect_to @kopi
    end

    def show
    # deal with the scenario that we are trying to get a ranger in a park that doesn't exist

      @kopi = Kopi.find(params[:id])

      if params[:origin_id].to_i != @kopi.origin.id
        # do something
      end
    end

    private

    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin_id)
    end

end
