class Boat < ActiveRecord::Base
	has_many :stalks, foreign_key: "boat_id"
	has_many :expeditions
	has_many :users, through: :expeditions
	has_many :stalking_users, through: :stalks, source: :user

	validates :name, uniqueness: {message: "this boat has already been created"}

	has_attached_file :image, :styles =>
	{ :medium => "300x300>", :thumb => "100x100>" },
	:default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image,
	:content_type => /\Aimage\/.*\Z/

	def get_cargo_string(num)
		if num == 500
			"Gold"
		elsif num == 450
			"Rum"
		elsif num == 400
			"Jewels"
		elsif num == 350
			"Silver"
		elsif num == 300
			"Ammunition"
		elsif num == 250
			"Grain"
		elsif num == 200
			"Preserved Meat"
		elsif num == 150
			"Rotten Apples"
		elsif num == 100
			"Letters"
		else
			"Empty!"
		end
	end
end
