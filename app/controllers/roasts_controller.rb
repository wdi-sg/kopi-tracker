class RoastsController < ApplicationController
  def index
    @roast = Roast.all
  end
end