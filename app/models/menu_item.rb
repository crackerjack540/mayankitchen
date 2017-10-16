class MenuItem < ApplicationRecord
	validates :title, :price, :type, presence: true
	before_create :authenticate_model
	before_update :authenticate_model
	before_destroy :authenticate_model
end
