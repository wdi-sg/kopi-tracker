class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @kopis = Kopi.all
    puts "hello"
  end

  def new
  end

  def create
  end

  def show
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :origin, :roast)
  end
end
