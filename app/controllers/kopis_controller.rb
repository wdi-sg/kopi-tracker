class KopisController < ApplicationController

  def index
    @kopis = Kopi.all
  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save

    redirect_to @kopi
    # redirect_to kopis_path
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
    @roasts = Roast.all
  end

  def update
    @origins = Origin.all
    @roasts = Roast.all

    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)

    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])

    @kopi.destroy

    redirect_to root_path
  end




private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :price_per_pound)
  end

end