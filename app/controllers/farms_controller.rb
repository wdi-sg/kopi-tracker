class FarmsController < ApplicationController
	
  def create
    @farm = Farm.new(farm_params)

    @farm.save
    redirect_to @farm
  end


	def show
		@farm = Farm.find(param[:id])
	end

	def farm_params
    params.require(:farm).permit(:location, :phoneNumber)
  end

end
