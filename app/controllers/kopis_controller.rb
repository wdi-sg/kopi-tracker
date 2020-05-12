class KopisController < ApplicationController

before_action :authenticate_user!, :except => [ :show, :index ]

def new
    @origins = Origin.all
  end

  def index
  # test to see if we are at /parks/:id/rangers or /rangers
    if params.has_key?(:origin_id)
    # get all the rangers for a specific park
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
    # get all rangers
      @kopis = Kopi.all
    end
  end

    def edit
        @kopi = Kopi.find(params[:id])
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.user = current_user

    @kopi.save
    redirect_to @kopi
  end

    def update
      @kopi = Kopi.find(params[:id])

      @kopi.update(origin_params)
      redirect_to @kopi
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])

    if params[:origin_id].to_i != @kopi.origin.id
      # do something
    end
  end

def destroy
  @kope = Kopi.find(params[:id])
  @kopi.destroy

  redirect_to root_path
end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin_id)
  end

end
