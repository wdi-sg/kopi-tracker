class RoastsController < ApplicationController

  def index
    @roasts = Roast.all
  end

private

  def roast_params
    params.require(:roast).permit(:name)

  end

end