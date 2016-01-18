class User < ActiveRecord::Base
	has_many :stalks, foreign_key: "user_id"
	has_many :expeditions
	has_many :boats, through: :expeditions
	has_many :stalked_boats, through: :stalks, source: :boat

	has_secure_password
	validates_presence_of :password, :on => :create
	validates :lname, uniqueness: true
	before_save :default_values
 	
 	def default_values
    	self.total_worth ||= 0
  	end

	def stalking?(boat)
		stalked_boats.include?(boat)
	end
end
