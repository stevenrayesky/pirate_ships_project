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
end
