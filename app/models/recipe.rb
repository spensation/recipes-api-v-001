class Recipe < ApplicationRecord
	has_many :comments
	has_many :likes
	has_attached_file :plateshot, default_url: ':style/default.png', styles: { thumb: "100x100>" }
  	validates_attachment_content_type :plateshot, content_type: /\Aimage\/.*\z/
end