class KopisController < ApplicationController
  def price
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts request.query_string
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
    @kopi = Kopi.find(request.query_string)
    render json: @kopi
  end
  def new
    @roasts = Roastedness.all
    @farms = Farm.all
  end
  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    @kopi.save
    puts @kopi
    redirect_to root_path
  end

  private
  def kopi_params
    params.require(:kopi).permit(:name, :priceperpound, :roastedness_id, :farm_id)
  end
end
