# frozen_string_literal: true

class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @kopi = Kopi.new
    @farms = Farm.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
  end

  def create
    @kopi = Kopi.new(kopi_params)

    if @kopi.save
      redirect_to @kopi
    else
      render 'new'
    end
  end

  def update
    @kopi = Kopi.find(params[:id])

    if @kopi.update(kopi_params)
      redirect_to @kopi
    else
      render 'edit'
    end
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roastedness, :farm_id)
  end
end
