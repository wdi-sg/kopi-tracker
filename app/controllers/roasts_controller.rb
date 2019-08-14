class RoastsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  before_filter do
    redirect_to new_user_session_path unless current_user && current_user.admin?
  end

    def index
        @roasts = Roast.all
    end

    def new
        @roast = Roast.new
    end

    def create
        @roast = Roast.new(roast_params)

        if @roast.save
            redirect_to @roast
        else
            render 'new'
        end
    end

    def show
        @roast = Roast.find(params[:id])
    end

    def edit
        @roast = Roast.find(params[:id])
    end


    def update
        @roast = Roast.find(params[:id])

        if @roast.update(roast_params)
            redirect_to @roast
        else
            render 'edit'
        end
    end

    def destroy
        @roast = Roast.find(params[:id])
        @roast.destroy

        redirect_to roasts_path
    end
    private
      def roast_params
        params.require(:roast).permit(:name)
      end
end