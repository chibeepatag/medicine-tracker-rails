json.extract! patient, :id, :urn, :name, :created_at, :updated_at
json.url patient_url(patient, format: :json)

json.medicines patient.medicines do |medicine|
    json.partial! medicine
end

json.events patient.events do |event|
    json.partial! event
end
