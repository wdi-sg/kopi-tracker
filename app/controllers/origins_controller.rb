class OriginsController < ApplicationController

  def index
    @kopis = Kopi.all
  end

  def new

  end

  def edit
     @origin = Origin.find(params[:id])
  end

  def create
    @origin = Origin.new(origin_params)
    @origin.save
    redirect_to @origin
  end

  def update

  end

  def show
    @origin = Origin.find(params[:id])
  end

  def destroy

  end


  private

    def origin_params
      params.require(:origin).permit(:name, :loation, :phone)
    end

end