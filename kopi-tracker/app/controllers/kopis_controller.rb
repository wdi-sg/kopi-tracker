class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

    def create
    @kopi = Kopi.new(kopi_params)

    @kopi.user = current_user

    if @kopi.save
    redirect_to @kopi
    else
      render 'new'
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :customer_ids => [])
  end
end