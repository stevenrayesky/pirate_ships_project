class Boat < ActiveRecord::Base
	has_many :stalks, foreign_key: "boat_id"
	has_many :expeditions
	has_many :users, through: :expeditions
	has_many :stalking_users, through: :stalks, source: :user

	validates :name, uniqueness: {message: "this boat has already been created"}
end
