class KopisController < ApplicationController
  def index

  end

  def show
  @kopi = Kopi.find(params[:id])

  end

  def new

  end

  def edit

  end

  def create
    # render plain: params[:article].inspect
    @kopi = Kopi.new(kopi_params)
    @kopi.save
    redirect_to @kopi
  end

  def update

  end

  def destroy

  end

  def doBananaStuff
  end


  private
    def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id)
  end
end
