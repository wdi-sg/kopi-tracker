class KopisController < ApplicationController

  def new
  end

  def index
  end

  def create
    @kopis = Kopis.new(kopi_params)

    @kopis.save
    redirect_to @kopi
  end

  def show
    @kopi = Kopis.find(params[:id])
  end

end

private

  def kopi_params
    params.require(:kopi).permit(:name, :description)
  end