class Patient < ApplicationRecord
	has_many :events
	has_many :medicines
end
