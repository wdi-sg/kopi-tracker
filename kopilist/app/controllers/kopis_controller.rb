class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @kopis = Kopi.all
    @roasts = Roast.all
    @origins = Origin.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
  end

  def create
    puts kopi_params
    @params = kopi_params
    # @kopi = Kopi.new(kopi_params)
    # @kopi.save
    @kopi = Kopi.new(:name => @params[:name], :roast => Roast.find(@params[:roast].to_i), :origin => Origin.find(@params[:origin].to_i))
    @kopi.save
    redirect_to @kopi
  end

  def update
  end

  def destroy
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin)
    end

end