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
	    if @boat.errors.any?
	    @boat.errors.each do |message|
	    end
		end
	end

	def edit
		@boat = Boat.find(params[:id])
	end

	def update
		@boat = Boat.find(params[:id])
    	# set the user to whoever's session is running (current user)
        @boat.update(boat_params)
        redirect_to boat_path @boat
        flash[:notice] = "this boat has been updated"
	end

	def show
		@boat = Boat.find(params[:id])
		@expedition = Expedition.new
		@expedition.boat_id = @boat_id
	end

	def destroy
	end

	private

	def boat_params
		params.require(:boat).permit(:name, :container, :cargo, :location, :captured)
	end
end
