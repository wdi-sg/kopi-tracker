class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @kopis = Kopi.all
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @roastednesses = Roastedness.all
    @origins = Origin.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roastednesses = Roastedness.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

  private
  def kopi_params
    params.require(:kopi).permit(:name, :roastedness_id, :origin_id, :price)
  end

end