class RoastsController < ApplicationController
  before_action :authenticate_user!
  def index
    @roasts = Roast.all

  end

  def new
  end

  def create
    @roast = Roast.new(roast_params)
    @roast.save

    redirect_to roast_path(@roast)
  end

  def show
    @roast = Roast.find(params[:id])
    @kopis = @roast.kopi
  end

  def edit
    @roast = Roast.find(params[:id])
  end

  def update
    @roast = Roast.find(params[:id])
    @roast.update(roast_params)
    @roast.save
    redirect_to roast_path(@roast)
  end

  def destroy
    @roast = Roast.find(params[:id])
    @roast.destroy
    redirect_to roasts_path
  end

  private
    def roast_params
      params.require(:roast).permit(:name, :roastedness)
    end
end
