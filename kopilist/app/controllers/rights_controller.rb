class RightsController < ApplicationController
  def index
@users = User.all
 end

  def show
        # deal with the case that we are trying to get a ranger for a park that doesn't exist
    @user = User.find(params[:id])
    end




  def new

  end

  def edit
    @user = User.find(params[:id])
  end

  def create

  end

  def update
      @user = User.find(params[:id])

  @user.update(admin: !@user.admin)
  redirect_to rights_path
  end

  def destroy

  end



end