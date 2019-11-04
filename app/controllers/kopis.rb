class KopisController < ApplicationController

  def index
    @kopi = Kopi.all
  end

  def new
  end

  def create
    # @park = Park.new(park_params)
    #
    # @park.save
    # redirect_to @park
  end

  def show
    @kopi = Kopi.find_by(roast:"italian").Kopis
  end

private

  def park_params
    # params.require(:park).permit(:name, :description)
  end

end
