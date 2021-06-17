class Category < ApplicationRecord
	has_many :blogs
	validates :category_type, :uniqueness => { :case_sensitive => false}
end
