module MapsHelper
	# This helper changes the boat image that appears on the maps#index depending on how many containers it has.
	def boat_image(boat)
		if boat.container < 3
			image_tag 'pirate_dingy.png', class: 'boat_image'
		elsif boat.container > 2 && boat.container < 6
			image_tag 'pirate_schooner.png', class: 'boat_image'
		else
			image_tag 'pirate_ship.png', class: 'boat_image'
		end
	end
	# expedition_form will be hidden on the maps#index until a user clicks on a boat.
	def expedition_form(boat, current_user)
		form_for @expedition, html: {class: "expedtion_form"} do |f|
			f.label :Name
			f.text_field :name
			f.label :Captains_Log
			f.text_field :captains_log
			f.label :Stolen_From
			f.select :origin, ['Port Royal', 'Tortuga', 'Barataria Bay', 'Canary Islands']
			f.label :Taken_To
			f.select :destination, ['Port Royal', 'Tortuga', 'Barataria Bay', 'Canary Islands']
			f.hidden_field(:user_id, :value => @current_user.id)
			f.hidden_field(:boat_id, :value => boat.id)
			f.submit :create
		end
	end
end
