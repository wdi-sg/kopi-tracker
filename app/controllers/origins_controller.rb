class OriginsController < ApplicationController

  def new
  end

  def index
  # test to see if we are at /origins/:id/kopis or /kopis
    if params.has_key?(:origin_id)
    # get all the kopis for a specific origin
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
    # get all kopis
      @origins = Origin.all
    end
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
      @origin = Origin.find(params[:id])

      @origin.update(origin_params)
      redirect_to @origin
  end

  def show
    @origin = Origin.find(params[:id])
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
