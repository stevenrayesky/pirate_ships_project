# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
