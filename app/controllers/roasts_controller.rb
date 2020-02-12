class RoastsController < ApplicationController
  before_action :check_if_admin

  def index
    @roasts = Roast.all
  end

  def show
    @roast = Roast.find(params[:id])
    @kopis = Kopi.all.where(roast: @roast)
  end

  def update
    @roast = Roast.find(params[:id])

    @roast.update(roast_params)
    redirect_to @roast
  end

  def edit
    @roast = Roast.find(params[:id])
  end

private

  def roast_params
    params.require(:roast).permit(:name)
  end

  def check_if_admin
    if :authenticate_user!
      if current_user.try(:admin?)
        return true
      end
    end
    redirect_to '/'
  end
end
