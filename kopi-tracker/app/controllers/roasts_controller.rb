class RoastsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @roasts = Roast.all
  end

  def show
    @roast = Roast.find(params[:id])
    @kopis = Kopi.where(roast_id: params[:id])
  end

  def new
   
  end

  def edit
    @roast = Roast.find(params[:id])
  end

  def create
    if !current_user.admin?
      redirect_to new_roast_path, notice: "Administrative access required to add new roast." 
    else 
      @roast = Roast.new(roast_params)
      # @farm.user = current_user
      @roast.save
      redirect_to @roast
    end
  end

  def update
    @roast = Roast.find(params[:id])
    @roast.update(roast_params)
    redirect_to @roast
  end

  def destroy
    @roast = Roast.find(params[:id])
    @roast.destroy
    redirect_to roasts_path
  end

  private

  def roast_params
    params.require(:roast).permit(:name)
  end
end
