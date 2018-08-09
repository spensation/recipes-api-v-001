class Recipe < ApplicationRecord
	has_many :comments
	has_many :likes
	has_many :ingredients
	has_attached_file :food_image, content_type: /\Aimage\/.*\z/
	accepts_nested_attributes_for :ingredients
end