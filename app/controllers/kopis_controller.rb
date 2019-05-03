class KopisController < ApplicationController
  def index
    @kopis = Kopi.All
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    byebug
    @kopi = Kopi.new(kopi_params)
    @kopi.save
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private def kopi_params
    params.require(:kopis).permit(:name, :roast, :origin)
  end
end