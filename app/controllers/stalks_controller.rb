class StalksController < ApplicationController
	def create	
		@stalk = Stalk.new
		@stalk.user_id = current_user.id
		@stalk.boat_id = params[:boat_id]
		if @stalk.save
			respond_to do |format|
				format.js
			end
		else
			respond_to do |format|
				format.js {render alert("Argh! There was an error following this here boat!")}
			end
		end
	end
end
