class Expedition < ActiveRecord::Base
	belongs_to :user
	belongs_to :boat

	validates_length_of :captains_log, :minimum => 50, :allow_blank => false
end
