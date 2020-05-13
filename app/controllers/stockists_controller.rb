class StockistsController < ApplicationController

  def index
    # if the request is from a nested route, get a subset of rangers
    if params.has_key?(:kopi_id)
      # get all the rangers for a specific park
      # @rangers = Ranger.parks.where(park_ids: params[:park_id] )
      @stockists = Kopi.find( params[:kopi_id] ).stockists
      @kopi = Kopi.find( params[:kopi_id] )
    else
      # get all rangers
      @stockists = Stockist.all

    end
  end

  def stockist_params
    params.require(:stockist).permit(:name, :kopi_ids => [])
  end

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :price_per_pound, :stockist_ids => [])
  end
end