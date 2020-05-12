class RoastsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
 
      def index
  end


  def show
  end

  def new
      if !current_user.admin?
            render html: 'You must be an admin to view this page.'
      end
  end

  def edit

  end

  def create
         if !current_user.admin?
            render html: 'You must be an admin to view this page.<'
         end
      @roast = Roast.new(roast_params)
      @roast.save
      redirect_to new_kopi_path
  end

  def update
  end

  def destroy
  end

end

private
  def roast_params
    params.require(:roast).permit(:name)
  end