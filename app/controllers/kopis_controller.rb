class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
  end

  def edit
    #this is like the select * from kopi model
    @kopi = Kopi.find(params[:id])
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
    redirect_to '/kopi/'+@kopi.id
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
