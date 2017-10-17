class MenuItem < ApplicationRecord
	validates :title, :price, :type, presence: true
end
