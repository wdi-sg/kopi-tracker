class KopisController < ApplicationController

  def index
    # some new stuff
    if params.has_key?(:origin_id)
      # get all the kopis for a specific park
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
      # get all kopis
      @kopis = Kopi.all
    end
  end

  def show
    @kopi = Kopi.find(params[:id])

    # if params[:origin_id].to_i != @kopi.origin_id
    #   # do something if origin does not exist
    # end
  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
    @roasts = Roast.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :price_per_pound)
  end

end
