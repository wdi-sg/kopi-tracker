class KopisController < ApplicationController

  def index
    @kopis = Kopi.all
  end

  def new
  end

  def create
    @kopi = Kopi.new(kopi_params)

    if @kopi.save
      redirect_to @kopi
    else
      render 'new'
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :price_per_pound, :roastedness, :origin)
  end

end