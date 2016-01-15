class Boat < ActiveRecord::Base
	has_many :expeditions
	has_many :users, through: :expeditions

	validates :name, uniqueness: {message: "this boat has already been created"}
end
