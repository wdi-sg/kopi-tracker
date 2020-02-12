class RoastsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @roasts = Roast.all
  end

  def new
    if !current_user.is_admin?
      redirect_to root_path
    end
  end

  def create
    @roast = Roast.new(roast_params)
    @roast.save
    redirect_to roasts_path
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def edit
    if current_user.is_admin
      @roast = Roast.find(params[:id])
      puts @roast.inspect
    else
      redirect_to root_path
    end
  end

  def update
    @roast = Roast.find(params[:id])
    @roast.update(roast_params)
    redirect_to root_path
  end
end

private

def roast_params
  params.require(:roast).permit(:name)
end
