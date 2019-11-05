class OriginsController < ApplicationController

  def index
    @origins = Origin.all
  end

  def new
  end

  def show
    @origin = Origin.find(params[:id])
    @kopis = Kopi.where(origin_id: params[:id])
    # render plain: @origin
  end

  def create
    @origin = Origin.new(origin_params)
    @origin.save
    redirect_to root_path
  end

  private
    def origin_params
      params.require(:origin).permit(:location, :phone)
    end

end