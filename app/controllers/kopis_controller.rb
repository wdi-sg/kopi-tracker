class KopisController < ApplicationController

  def index
    roast_param = params[:roast]
    @roasts = Roast.all
    roast = Roast.where(name: [roast_param])
    if roast_param == nil || roast_param == ""
      @kopis = Kopi.all
    else
      @kopis = Kopi.all.where(roast: roast)
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def edit
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
  end

  def destroy
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :price_per_kg)
  end
end
