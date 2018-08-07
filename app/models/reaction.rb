class Reaction < ApplicationRecord
	belongs_to :organ
	has_many :events

	validates :name, presence: true, uniqueness: true
end
