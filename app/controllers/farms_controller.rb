class FarmsController < ApplicationController
	def index
    @farms = Farm.all
  end
  def create
    @farm = Farm.new(farm_params)
puts @farm.inspect
    @farm.save
    redirect_to @farm
  end


	def show
		@farm = Farm.find(params[:id])
	end

	def farm_params
    params.require(:farm).permit(:location, :phoneNumber)
  end

end
