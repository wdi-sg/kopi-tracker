class OriginsController < ApplicationController
  def index
    @origins = Origin.all
  end

  def show
    @origin = Origin.find(params[:id])
    @kopis = Kopi.where(origin_id: params[:id])
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