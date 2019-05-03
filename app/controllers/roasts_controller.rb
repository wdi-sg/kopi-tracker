class RoastsController < ApplicationController

  def index
    @roasts = Roast.all
  end

  def new
  end

  def create
    @roast = Roast.new(roast_params)

    if @roast.save
      redirect '/'
    else
      render 'new'
    end

    # @roast.save
    # redirect_to @roast
  end

  def show
    @roast = Roast.find(params[:id])
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

    redirect_to roasts_path
  end

private

  def roast_params
    params.require(:roast).permit(:roast)
  end

end