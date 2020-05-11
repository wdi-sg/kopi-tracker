class OriginsController < ApplicationController
  def index
  end

  def show
    @origin = Origin.find(params[:id])
  end

  def new
  end

  def create
    @origin = Origin.new(origin_params)
    puts "===================================="
    puts @origin
    @origin.save
    redirect_to @origin
  end

  def edit
  end

  def update
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