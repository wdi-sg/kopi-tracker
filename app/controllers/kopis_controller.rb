class KopisController < ApplicationController
  def index
     @kopis = Kopi.all
     # render plain: Kopi.all.inspect
  end

  def show
     @kopi = Kopi.find(params[:id])
     # render plain: params[:kopi].inspect

  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
     @origins = Origin.all


  end

  def create
    # render plain: params[:kopi].inspect
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


end


private
  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end