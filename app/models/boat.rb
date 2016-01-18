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

	CARGO_OPTIONS = {'Gold' => 500, 'Rum' => 450, 'Jewels' => 400, 'Silver' => 350, 'Ammunition' => 300, 'Grain' => 250, 'Preserved Meat' => 200, 'Rotten Apples' => 150, 'Letters' => 100, 'Empty' => 100}
end
