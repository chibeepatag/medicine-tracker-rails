json.extract! event, :id, :event_date, :severity, :organ, :reaction, :created_at, :updated_at
json.url patient_event_url(event.patient, event, format: :json)
