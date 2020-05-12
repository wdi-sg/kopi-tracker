class KopisController < ApplicationController
  def index
      @kopis = Kopi.order(id: :asc)
      
  end


  def show
      @kopi = Kopi.find(params[:id])
      @kopi_farm = KopiFarm.find(@kopi.kopi_farm.id)
  end

  def new
  end

  def edit

  end

  def create
  end

  def update
  end

  def destroy
  end

end

private
  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roastedness)
  end