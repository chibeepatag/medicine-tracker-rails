json.extract! event, :id, :event_date, :severity, :organ, :reaction, :created_at, :updated_at
json.url event_url(event, format: :json)
