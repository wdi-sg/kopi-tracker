class RoastsController < ApplicationController

  before_action :authenticate_user!

  def authenticate_admin!
    unless current_user.admin?
      redirect_to kopis_path
    end
  end

  before_action :authenticate_admin!



  def index
    @roast = Roast.all.order('id')
  end

  def new
  end

  def edit

    @roast = Roast.find(params[:id])

  end

  def create
    @roast = Roast.new(roast_params)

    @roast.save
    redirect_to @roast
  end

  def update

    @roast = Roast.find(params[:id])

    @roast.update(roast_params)
    redirect_to @roast

  end


  def show
    @roast = Roast.find(params[:id])
  end


  def destroy

    @roast = Roast.find(params[:id])
    @roast.destroy

    redirect_to @roast

  end


private

  def roast_params
    params.require(:roast).permit(:name)
  end

end