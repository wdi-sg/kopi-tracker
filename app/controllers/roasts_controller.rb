class RoastsController < ApplicationController

  def index
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def new
  end

  def create
    @roast = Roast.new(roast_params)

    @roast.save
    redirect_to @roast
  end

    def edit
  end

  def update
  end

  def destroy
  end

private

  def roast_params
    params.require(:roast).permit(:name)
  end

end