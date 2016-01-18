class User < ActiveRecord::Base
	has_many :stalks, foreign_key: "user_id"
	has_many :expeditions, foreign_key: "user_id"
	has_many :exp_boats, through: :expeditions, source: :boat
	has_many :stalked_boats, through: :stalks, source: :boat

	has_secure_password
	validates_presence_of :password, :on => :create
	validates :lname, uniqueness: true
	before_save :default_values
 	
 	# total_worth set to 0 upon creation of a new user.
 	def default_values
    	self.total_worth ||= 0
  	end
  	# Check to see if a user is stalking a particular boat.
	def stalking?(boat)
		stalked_boats.include?(boat)
	end
end
