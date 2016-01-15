class Expedition < ActiveRecord::Base
	belongs_to :boats
	belongs_to :users
end
