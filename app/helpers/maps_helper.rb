module MapsHelper

	def boat_image(boat)
		if boat.container < 3
			image_tag 'pirate_dingy.png', class: 'boat_image'
		elsif boat.container > 2 && boat.container < 6
			image_tag 'pirate_schooner.png', class: 'boat_image'
		else
			image_tag 'pirate_ship.png', class: 'boat_image'
		end
	end
end
