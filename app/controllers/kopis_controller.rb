class KopisController < ApplicationController
  def index
      @kopis = Kopi.all

  end

  def show
     @kopi = Kopi.find(params[:id])
  end

  def new
      @roasts = Roast.all
  end

  def edit
  end

  def create
     @kopi = Kopi.new(kopis_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
  end

  def destroy
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin)
  end

end