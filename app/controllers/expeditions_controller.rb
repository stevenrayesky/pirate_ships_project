class ExpeditionsController < ApplicationController
	def index
		@expeditions = Expedition.all
	end

	def new 
		@expedition = Expedition.new
	end

	def create
		@expedition = Expedition.new(expedition_params)
		@expedition.user_id = current_user.id
		@expedition.boat_id = params[:boat_id]
		@boat = Boat.find(params[:boat_id])
		if @expedition.save
			@boat.worth_for_pirate += current_user.total_worth
			flash[:notice] = "You have successfully submitted this expedition report and can keep your latest acquistion"
			redirect_to root_path

		else
			flash[:notice] = "This expedition report did not submit. Please try again in order to keep your latest acquisition"
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
	def expedition_params
		params.require(:expedition).permit(:name, :captains_log, :origin, :destination)
	end
end
