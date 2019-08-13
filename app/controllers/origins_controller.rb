class OriginsController < ApplicationController
  def index
    @origins = Origin.all
  end

  def show
    @origin = Origin.find(params[:id])
  end

  def new
  end

  def edit
    #this is like the select * from origin model
    @origin = Origin.find(params[:id])
  end

  def create
    # render plain: params[:origin].inspect

    #this is the link to the models origin
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def update
    @origin = Origin.find(params[:id])

    @origin.update(origin_params)
    redirect_to '/origin/'+@origin.id
    #alternatively
    # redirect_to @origin
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy

    redirect_to root_path
  end

  private
    def origin_params
      params.require(:origin).permit(:name, :location, :phone)
    end
end
