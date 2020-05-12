class OriginsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

def index

  @origins = Origin.all
  @kopis = Kopi.all
end

def new
  end

  def show
    @origin = Origin.find(params[:id])
    @kopi = Kopi.where(origin_id: @origin.id)

      puts '*************'
      puts
      puts '*************'

  end

  def edit
    @origin = Origin.find(params[:id])
  end

  def create
    @origin = Origin.new(origin_params)
    @origin.save
    redirect_to origins_url
  end

  def update
      @origin = Origin.find(params[:id])
      @origin.update(origin_params)
      redirect_to root_path
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy
    redirect_to root_path

  end


private

def origin_params
  params.require(:origin).permit(:location, :phone_no)
end



end