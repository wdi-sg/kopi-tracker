class OriginsController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
      @origins = Origin.all
    end


  def show
     @origin = Origin.find(params[:id])
     # render plain: params[:kopi].inspect
  end

  def new
  end

  def edit
    @origins = Origin.all
  end

  def create
    # render plain: params[:kopi].inspect
     @origin = Origin.new(origin_params)

    @origin.save
      redirect_to @origin
  end

  def update
     @origin = Origin.find(params[:id])
    @origin.update(origin_params)
    redirect_to @origin
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy
    redirect_to origins_path
  end

end

private
  def origin_params
    params.require(:origin).permit(:location, :phone)
  end