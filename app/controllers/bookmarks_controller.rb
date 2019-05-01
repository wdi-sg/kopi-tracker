class BookmarksController < ApplicationController
  def show_kopi
    @user = User.find(current_user.id)
  end

  def edit_kopi
    @user = User.find(current_user.id)
    @kopis = Kopi.all
  end

  def update_kopi
    @user = User.find(current_user.id)

    @user.update(post_kopi_params)
    redirect_to root_path
  end


  def show_roast
    @user = User.find(current_user.id)
  end

  def edit_roast
    @user = User.find(current_user.id)
    @roasts = Roast.all
  end

  def update_roast
    @user = User.find(current_user.id)

    @user.update(post_roast_params)
    redirect_to root_path
  end

private
  def post_kopi_params
    params.require(:kopi_bookmark).permit(:kopi_ids => [])
  end

  def post_roast_params
    params.require(:roast_bookmark).permit(:roast_ids => [])
  end
end