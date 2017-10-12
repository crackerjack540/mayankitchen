class MenuItem < ApplicationRecord
	validates :title, :price, presence: true
	has_many :appetizers
end
