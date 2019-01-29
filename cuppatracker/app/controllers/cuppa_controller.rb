class CuppaController < ApplicationController
  def list
    @cuppas = Cuppa.all
  end

  def show
    @cuppa = Cuppa.find(params[:id])
  end

  def new
    @roasts = Roast.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
