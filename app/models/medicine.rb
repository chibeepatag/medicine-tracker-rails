class Medicine < ApplicationRecord
  belongs_to :patient
  belongs_to :antibiotic
  belongs_to :frequency
  belongs_to :dose
  belongs_to :route
end
