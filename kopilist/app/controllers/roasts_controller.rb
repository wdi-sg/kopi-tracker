class RoastsController < ApplicationController

before_action :authenticate_user!, :except => [ :show, :index ]
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
    @roast = Roast.new(roast_params)

    @roast.save
    redirect_to @roast

  end

  def update
         @roast = Roast.find(params[:id])

  @roast.update(roast_params)
  redirect_to @roast
  end

  def destroy
          @roast = Roast.find(params[:id])
  @roast.destroy

  redirect_to root_path
  end

  private

  def roast_params
    params.require(:roast).permit(:roast_name)
  end



end