class Recipe < ApplicationRecord
	has_many :comments
	has_many :likes
	has_many :ingredients
	has_attached_file :food_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	accepts_nested_attributes_for :ingredients
end