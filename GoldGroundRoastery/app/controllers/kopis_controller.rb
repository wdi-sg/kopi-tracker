class KopisController < ApplicationController

  def index
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

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id)
  end

end