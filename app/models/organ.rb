class Organ < ApplicationRecord
	has_many :reactions

	validates :name, presence: true, uniqueness: true
end
