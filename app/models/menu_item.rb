class MenuItem < ApplicationRecord
	has_many :appetizers
	scope :appetizers -> { where(MenuItem: 'Appetizer')}
end

class Appetizer < MenuItem
end