class KopisController < ApplicationController

  def index
    # test to see if we are at /origins/:id/kopis or /kopis
    if params.has_key?(:origin_id)
      # get all the kopis for a specific origin
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
      # get all kopis
      @kopis = Kopi.all
    end
  end

  def show
    @kopi = Kopi.find(params[:id])

    if params[:kopi_id].to_i != @kopi.origin.id
      puts "not from here"
    end
  end

  def new
    @origins = Origin.all
  end

  def edit
    #this is like the select * from kopi model
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
  end

  def create
    # render plain: params[:kopi].inspect

    #this is the link to the models kopi
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to '/kopis/'+ (@kopi.id).to_s
    #alternatively
    # redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to root_path
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin_id)
    end
end
