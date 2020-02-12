class OriginsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show]
  def index
    @origin = Origin.all
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

  def edit
    @origin = Origin.find(params[:id])
  end

  def update
    if current_user.try(:admin?)
    @origin = Origin.find(params[:id])
    @origin.update(origin_params)
    redirect_to @origin
  else
    redirect_to '/'
  end

  end

  def destroy
    if current_user.try(:admin?)
    @origin = Origin.find(params[:id])
    @origin.destroy
    redirect_to @origin
  else
    redirect_to '/'
  end

  end


private
def check_if_admin
  if :authenticate_user!
    if current_user.try(:admin?)
      return true
    
    end
  end
  redirect_to '/'
end

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end

end 