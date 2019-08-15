# frozen_string_literal: true

class FarmsController < ApplicationController
  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def new
    @farm = Farm.new
  end

  def edit
    @farm = Farm.find(params[:id])
  end

  def create
    @farm = Farm.new(farm_params)

    if @farm.save
      redirect_to @farm
    else
      render 'new'
    end
  end

  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy

    redirect_to farms_path
  end

  def update
    @farm = Farm.find(params[:id])

    if @farm.update(farm_params)
      redirect_to @farm
    else
      render 'edit'
    end
  end

  private

  def farm_params
    params.require(:farm).permit(:location, :phone)
  end
end
