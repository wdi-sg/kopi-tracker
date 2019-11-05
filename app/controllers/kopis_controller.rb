class KopisController < ApplicationController
  def index
  end

  def show
     @kopi = kopi.find(params[:id])

    if params[:origin_id].to_i != @kopi.origin.id
  end

  def new
    @origin = Origin.new(origin_params)
  end

  def edit
  end

  def create
    @kopi = kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
  end

  def destroy
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id)
  end
end