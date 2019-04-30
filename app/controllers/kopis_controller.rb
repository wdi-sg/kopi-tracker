class KopisController < ApplicationController

  def index
    @kopis = Kopi.all

  end

  def new

    @roastednesses = Roastedness.all
    @origins = Origin.all
  end

  def create


    @kopi = Kopi.new(kopi_params)

    if @kopi.save
      render plain: 'ok this works FINALLY'
    else
      render plain: 'um...'
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :price_per_pound, :origin_id, :roastedness_id)
  end

end