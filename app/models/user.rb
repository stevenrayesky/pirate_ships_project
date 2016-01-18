class User < ActiveRecord::Base
	has_many :stalks, foreign_key: "user_id"
	has_many :expeditions
	has_many :boats, through: :expeditions
	has_many :stalked_boats, through: :stalks, source: :boat

	has_secure_password
	validates_presence_of :password, :on => :create
	validates :name, uniqueness: true

	def stalking?(boat)
		stalked_boats.include?(boat)
	end
end
