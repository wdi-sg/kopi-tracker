class KopisController < ApplicationController

  def new
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

private

  def kopi_params
    params.require(:kopi).permit(:name)
  end

end