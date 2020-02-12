class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    puts "**************************************"
    puts @kopi.inspect
    puts "**************************************"
    puts @kopi.user
    @kopi.save
    redirect_to "/origins/" + @kopi.origin.id.to_s
  end

  def show
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :price)
  end

  def order_params
    params.require(:order).permit(:weight, :id, :kopi_id)
  end
end
