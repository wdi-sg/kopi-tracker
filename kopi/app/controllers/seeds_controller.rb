class SeedsController < ApplicationController
	def index
		@seeds =Seed.all
		
	end

	def new
	end

	def edit
	end

	def create
		render plain: params[:seed].inspect

		@seed = Seed.new(seed_params)
		@seed.save
		redirect_to @seed

	end

	def show
		@seed = Seed.find(params[:id])
	end

	def update
	end

	def destroy
	end

end
private
  def seed_params
    params.require(:seed).permit(:title, :text, :name)
  end