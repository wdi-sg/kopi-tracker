class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
    def new
        @kopi = Kopi.new
        @origins = Origin.all
        @roasts = Roast.all
    end

    def index
      @kopis = Kopi.all
    end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    if @kopi.save
      redirect_to @kopi
    else
      render 'new'
    end
  end

  def update
    @kopi = Kopi.find(params[:id])

    if @kopi.update(article_params)
      redirect_to @kopi
    else
      render 'edit'
    end
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])

    # if params[:origin_id].to_i != @kopi.origin.id
    #   # do something
    # end
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end
end