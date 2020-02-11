class KopisController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @kopis = Kopi.new(kopi_params)

    @kopis.save
    redirect_to root_path
  end



private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin_id)
  end

end