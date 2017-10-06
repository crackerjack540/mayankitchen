class MenuItem < ApplicationRecord
	validates :title, :price, presence: true
end
