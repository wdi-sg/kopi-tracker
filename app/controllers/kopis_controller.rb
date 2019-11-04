class KopisController < ApplicationController
  def index
    if params.has_key?(:origin_id)
      # get all the rangers for a specific park
      @kopis = Kopi.where(origin_id: params[:origin_id])
    else
      # get all rangers
      @kopis = Kopi.all
    end
  end

  def show
      @kopi = Kopi.find_by(id: params[:id] )
  end
end
