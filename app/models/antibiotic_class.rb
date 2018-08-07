class AntibioticClass < ApplicationRecord
	has_many :antibiotics

	validates :name, presence: true, uniqueness: true
end
