class OriginsController < ApplicationController

  def index
    @origins = Origin.all.order("location ASC")
  end

  def new
    @origin = Origin.new
  end

  def edit
    @origin = Origin.find(params[:id])
  end

def create
    @origin = Origin.new(origin_params)
    if @origin.save
      redirect_to @origin
    else
      render "new"
    end
  end

  def update
    @origin = Origin.find(params[:id])
    if @origin.update(origin_params)
      redirect_to @origin
    else
      render "edit"
    end
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy
    redirect_to root_path
  end

private

  def origin_params
    params.require(:origin).permit(:location, :phone)
  end

end
