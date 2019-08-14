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

    # @kopi = Kopi.new(kopi_params)
    # @kopi.save
    # redirect_to @kopi
    if @kopi.save
           redirect_to @kopi
       else
           render ‘new’
       end

  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])

    # if params[:origin_id].to_i != @kopi.origin.id
    #   # do something
    # end
  end

  def add
    @kopi = Kopi.new(kopi_params)
    @kopi.origin_id = params[:origin_id]
    @kopi.save

    render plain: ("added")

    #if you want to just add params, can also do it by the hidden input way <input type="hidden" name="kopi[origin_id]" value=<%= @origins.id %>>

  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end
end