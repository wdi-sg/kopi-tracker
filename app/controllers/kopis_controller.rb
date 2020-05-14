class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all

  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    if @kopi.save
      redirect_to @kopi
    else
      @roasts = Roast.all
      @origins = Origin.all
      render 'new'
    end
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

   def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])

    @kopi.destroy
    redirect_to root_path
  end

  def show
    @kopi = Kopi.find(params[:id])
    roast_id = @kopi.roast_id
    origin_id = @kopi.origin_id
    @roast = Roast.find(roast_id)
    @origin = Origin.find(origin_id)
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :price_per_kilo)
  end

end