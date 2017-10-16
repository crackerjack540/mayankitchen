class MenuItem < ApplicationRecord
	validates :title, :price, :type, presence: true
	has_many :appetizers
end
