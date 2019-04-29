class RoastsController < ApplicationController
  def index
    @roast = Roast.all
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @roast = Roast.new(roast_params)

    @roast.save
    redirect_to @kopi
  end

  def update
  end

  def destroy
  end

  private
  def roast_params
    params.require(:roast).permit(:roast_type, :decription)
  end
end