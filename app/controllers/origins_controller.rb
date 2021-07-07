class OriginsController < ApplicationController

  def index
    @origins = Origin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kopis }
    end
  end

  def new
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def show
    @origin = Origin.find(params[:id])
  end

private

  def origin_params
    params.require(:origin).permit(:name, :location, :phone)
  end

end