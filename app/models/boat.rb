class Boat < ActiveRecord::Base
	has_many :expeditions
	has_many :users, through: :expeditions
end
