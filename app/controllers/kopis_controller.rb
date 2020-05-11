class KopisController < ApplicationController

  def index
    # test to see if we are at /parks/:id/rangers or /rangers
    if params.has_key?(:origin_id)
      # get all the rangers for a specific park
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
      # get all rangers
      @kopis = Kopi.all
    end
  end

  def new
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    # @kopi.inspect
    result = @kopi.save

    if result == true

      redirect_to @kopi
    else
      render plain: @kopi.errors.inspect
    end
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

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