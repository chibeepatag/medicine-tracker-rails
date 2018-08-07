class Event < ApplicationRecord
	 belongs_to :patient
	 belongs_to :reaction
	 belongs_to :severity
	 belongs_to :organ
end

