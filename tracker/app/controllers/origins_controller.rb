class OriginsController < ApplicationController
  def index
    @origin = Origin.all
  end

  def show
    @origin = Origin.find(params[:id])
    # @kopi = Kopi.find_by(origin_id: :id)
    @kopis = @origin.kopi
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
    @origin = Origin.find(params[:id])
    @origin.update(origin_params)

    redirect_to @origin
  end

  def destroy
    p "deleting!"
    @origin = Origin.find(params[:id])
    @origin.destroy

    redirect_to origins_path
  end

  private

    def origin_params
      params.require(:origins).permit(:location, :phone_number)
    end

end