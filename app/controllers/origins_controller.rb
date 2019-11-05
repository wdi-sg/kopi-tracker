class OriginsController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index]
  def index
    @origins = Origin.all
  end
  
  def show
    @origin = Origin.find(params[:id])
    @kopis = Origin.find(params[:id]).kopi
  end
  
end
