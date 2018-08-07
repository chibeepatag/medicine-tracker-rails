class Antibiotic < ApplicationRecord
	belongs_to :antibiotic_class
	has_many :medicines

	validates :name, presence: true, uniqueness: true
end
