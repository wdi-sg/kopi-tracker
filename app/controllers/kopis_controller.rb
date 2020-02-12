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
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end

end