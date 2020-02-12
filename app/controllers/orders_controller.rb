class OrdersController < ApplicationController
  def index
    @kopi = Kopi.all
  end
  def show
    roast_name = params[:name]
    @roast = Roast.find_by(name: roast_name)
    @roast.kopi = Kopi.where(roast_id: @roast.id )
  end
end