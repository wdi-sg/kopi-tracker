class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all
  end

  def new
    @kopi = Kopi.new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user

    if (@kopi.save)
      redirect_to @kopi
    else
      render "new"
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def update
    @kopi = Kopi.find(params[:id])

    if (@kopi.update(kopi_params))
      redirect_to @kopi
    else
      render "edit"
    end
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

  private def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id)
  end
end
