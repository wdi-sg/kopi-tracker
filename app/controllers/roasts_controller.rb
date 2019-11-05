class RoastsController < ApplicationController

  def authenticate_admin!
    # check if current user is admin
    unless current_user.admin
      # if current_user is not admin redirect to some route
      redirect_to '/'
    end
    # if current_user is admin he will proceed to edit action
  end

  before_action :authenticate_admin!, only: [:new, :edit]

  def index
    @roasts = Roast.all
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def new
    @roast = Roast.new
  end

  def create
    @roast = Roast.new(roast_params)
    if @roast.save
      redirect_to @roast
    else
      render 'new'
    end
  end

  def edit
    @roast = Roast.find(params[:id])
  end

  def update
    @roast = Roast.find(params[:id])
    @roast.update(roast_params)
    redirect_to @roast
  end

  def destroy
    @roast = Roast.find(params[:id])
    @roast.destroy
    redirect_to @roast
  end

  private def roast_params
    params.require(:roast).permit(:name)
  end
end