class OriginsController < ApplicationController
  def index
    @origins = Origin.all
    @kopis = Kopi.all
  end

  def show
    @origin = Origin.find(params[:id])
    @kopis = @origin.kopi
  end
end