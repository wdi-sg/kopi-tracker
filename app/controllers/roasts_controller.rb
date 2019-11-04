class RoastsController < ApplicationController
  def index
    @roasts = Roast.all
  end

  def show
    @roast = Roast.find(params[:id])
  end
end