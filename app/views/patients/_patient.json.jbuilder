json.extract! patient, :id, :urn, :name, :created_at, :updated_at
json.url patient_url(patient, format: :json)
