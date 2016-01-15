class MapsController < ApplicationController
	def index
		@port_royal_boats = []
		@canary_islands_boats = []
		@tortuga_boats = []
		@barataria_bay_boats = []
		Boat.all.each do |boat|
			if boat.captured? == false
				if boat.location == "Port Royal"
					@port_royal_boats << boat
					puts "*****BOAT********"
				elsif boat.location == "Canary Islands"
					@canary_islands_boats << boat
				elsif boat.location == "Tortuga"
					@tortuga_boats << boat
				elsif boat.location == "Barataria Bay"
					@barataria_bay_boats << boat
				else
				end
			end
		end
	end
	puts @port_royal_boats
end
