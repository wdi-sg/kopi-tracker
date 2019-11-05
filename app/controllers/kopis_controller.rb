class KopisController < ApplicationController
  def index
    @kopis = Kopi.all

  end

  def show
  @kopi = Kopi.find(params[:id])

  end

  def new
    @roasts = Roast.all
    @origins = Origin.all

  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all

  end

  def create
    # render plain: params[:article].inspect
    @kopi = Kopi.new(kopi_params)
    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = kopi.find(params[:id])
    @kopi.update(kopi_params)

    redirect_to @kopi

  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy
    redirect_to @kopi

  end

  private
    def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id)
  end
end