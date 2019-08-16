class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

  def show
    @kopi = Kopi.find(params[:id])
  end
end