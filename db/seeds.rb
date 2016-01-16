# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(total_worth: 1800, password: "123", lname: "Jones", bio: "For every ten years at sea he could spend one day on land to be with her. Ten years after first being charged with the duty, Jones prepared to be reunited with his true love, but was heartbroken and enraged when she did not appear. Unable to deal with the sadness of Calypso's betrayal, Jones, through some unknown supernatural means, ripped out his heart and locked it in a chest, burying it on the plague island Isla Cruces.", adjective: "Old Salt")
User.create!(total_worth: 1200, password: "123", lname: "Blackbeard", bio: "Though there have been more successful pirates, Blackbeard is one of the best-known and widely-feared of his time. He commanded four ships and had a pirate army of 300 at the height of his career, and defeated the famous warship, HMS “Scarborough” in sea-battle. He was known for barreling into battle clutching two swords, with several knives and pistols at the ready. He captured over forty merchant ships in the Caribbean, and without flinching killed many prisoners.", adjective: "Scallywag")
User.create!(total_worth: 1500, password: "123", lname: "Sparrow", bio: "n the films, Sparrow is one of the nine pirate lords in the Brethren Court, the Pirate Lords of the Seven Seas. He can be treacherous and survives mostly by using wit and negotiation rather than by force, opting to flee most dangerous situations and to fight only when necessary. Sparrow is introduced seeking to regain his ship, the Black Pearl, from his mutinous first mate, Hector Barbossa.", adjective: "Scallywag")
User.create!(total_worth: 300, password: "123", lname: "Kidd", bio: "A stylish Scotsman who had been a leading citizen of New York City, actively involved in the building of Trinity Church, Captain Kidd began his career as a privateer, originally commissioned to rid the seas of pirates. Only reluctantly, did he cross bounds into piracy (having been elected pirate captain by his crew), although his piracy itself may be questionable as his exploits may have been sensationalized.", adjective: "SeaDog")
User.create!(total_worth: 900, password: "123", lname: "Roberts", bio: "Roberts’ crew admired his adventurist courage, calling him “pistol proof” - though he had been forced into piracy, having once been an officer on board a ship that was captured by the pirate Howell Davis. After taking over, Roberts’ navigational skills, charisma, and bravado painted him golden the eyes of his men.", adjective: "Old Salt")

Boat.create(name: "Old Faithful", container: 2, captured: false, location: "Canary Islands", cargo: "Gold")
Boat.create(name: "Ye Scurvy Dog", container: 1, captured: false, location: "Barataria Bay", cargo: "Rum")
Boat.create(name: "Mermaid's Bosom", container: 4, captured: false, location: "Tortuga", cargo: "Letters")

Boat.create(name: "Lil' Pep", container: 1, captured: false, location: "Tortuga", cargo: "Letters")
Boat.create(name: "King's Courier", container: 2, captured: false, location: "Canary Islands", cargo: "Ammunition")
Boat.create(name: "Forlorn Maiden", container: 4, captured: false, location: "Port Royal", cargo: "Rotten Apples")

Boat.create(name: "Ransom", container: 5, captured: false, location: "Barataria Bay", cargo: "Gold")
Boat.create(name: "Cloud's Glory", container: 1, captured: false, location: "Port Royal", cargo: "Cotton")
Boat.create(name: "Sid Meyer", container: 2, captured: false, location: "Tortuga", cargo: "Rotten Apples")

Boat.create(name: "Captain's Hook", container: 2, captured: false, location: "Canary Islands", cargo: "Ammunition")
Boat.create(name: "Pan's Schooner", container: 3, captured: false, location: "Port Royal", cargo: "Rum")
Boat.create(name: "The Black Pearl", container: 3, captured: false, location: "Barataria Bay", cargo: "Rotten Apples")


Expedition.create(boat_id: 1, user_id: 1, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 400, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 2, user_id: 2, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 500, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 3, user_id: 3, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 1000, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 4, user_id: 4, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 0, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 5, user_id: 5, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 100, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 6, user_id: 1, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 900, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 7, user_id: 2, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 300, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 8, user_id: 3, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 600, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 9, user_id: 4, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 100, origin: "origin_test", destination: "destination_test", name: "expedition_name")
Expedition.create(boat_id: 10, user_id: 5, captains_log: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae rem magni, sint nihil, expedita illum molestiae facilis incidunt repellat modi saepe beatae vel, qui facere quam aliquam. Molestias aut, totam.", worth: 400, origin: "origin_test", destination: "destination_test", name: "expedition_name")











