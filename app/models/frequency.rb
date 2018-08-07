class Frequency < ApplicationRecord
	has_many :medicines

	validates :name, presence: true, uniqueness: true
end
