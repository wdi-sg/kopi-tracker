class RoastsController < ApplicationController

  def show
    @roasts = Roast.find(params[:id])
  end

end