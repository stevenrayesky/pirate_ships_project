class User < ActiveRecord::Base
	has_many :expeditions
	has_many :boats, through: :expeditions


	has_secure_password
	validates_presence_of :password, :on => :create

	def find_total_worth
		total_worth = 0
		self.expeditions.each do |e|
			total_worth += e.worth
		end
		total_worth
	end

	def self.order_users_by_worth
		self.sort do |a,b| b.find_total_worth <=> a.find_total_worth end
	end

end
