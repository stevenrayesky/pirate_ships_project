class BoatsController < ApplicationController
	def index
		@boats = Boat.all
	end

	def new
		@boat = Boat.new
	end

	def create
		@boat = Boat.new(boat_params)
		if @boat.save
			redirect_to boats_path
			flash[:notice] = "you have created a new boat"
		else
			redirect_to new_boat_path
			flash[:notice] = "please try again"
		end

	end

	def edit
	end

	def update
	end

	def show
	end

	def destroy
	end

	private

	def boat_params
		params.require(:boat).permit(:name, :container, :cargo, :location, :captured)
	end
end
