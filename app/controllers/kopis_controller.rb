class KopisController < ApplicationController
  def index
      
  end


  def show
      @kopi = Kopi.find(params[:id])
      @kopi_farm = KopiFarm.find(@kopi.origin_id)
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