class RoastsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @roasts = Roast.order(id: :asc)
    end

    def new
    end

    def edit
        @roast = Roast.find(params[:id])
    end


    def create
        @roast = Roast.new(roast_params)

        @roast.user = current_user

        @roast.save
        redirect_to @roast
    end

    def update
      @roast = Roast.find(params[:id])

      @roast.update(roast_params)
      redirect_to @roast
  end

  def destroy
      @roast = Roast.find(params[:id])
      @roast.destroy

      redirect_to @roast
  end

  def show
    @roast = Roast.find(params[:id])
end

private
def roast_params
    params.require(:roast).permit(:name)
end

end