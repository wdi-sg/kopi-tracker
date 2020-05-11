class RoastsController < ApplicationController


  def show
    @roast = Roast.find(params[:id])
    @kopis = Kopi.where(roast_id: params[:id])
  end

  def new
  end

  def edit
  end

  def create

  end

  def update
  end

  def destroy
  end




end