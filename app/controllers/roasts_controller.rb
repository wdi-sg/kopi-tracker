class RoastsController < ApplicationController
  def index
    @roasts = Roast.all
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def new
  end

  def edit
    #this is like the select * from roast model
    @roast = Roast.find(params[:id])
  end

  def create
    # render plain: params[:roast].inspect

    #this is the link to the models roast
    @roast = Roast.new(roast_params)

    @roast.save
    redirect_to @roast
  end

  def update
    @roast = Roast.find(params[:id])

    @roast.update(roast_params)
    redirect_to @roast
    #alternatively
    # redirect_to @roast
  end

  def destroy
    @roast = Roast.find(params[:id])
    @roast.destroy

    redirect_to root_path
  end

  private
    def roast_params
      params.require(:roast).permit(:name)
    end
end
