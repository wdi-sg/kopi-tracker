class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.save
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
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
    redirect_to @kopi
  end

  def new
    @origins = Origin.all
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin_id)
  end
end
