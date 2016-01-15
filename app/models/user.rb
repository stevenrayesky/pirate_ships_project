class User < ActiveRecord::Base
	has_many :expeditions
	has_many :boats, through: :expeditions


	has_secure_password
	validates_presence_of :password, :on => :create
end
