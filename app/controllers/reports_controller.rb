class ReportsController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all
  end

  def show
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