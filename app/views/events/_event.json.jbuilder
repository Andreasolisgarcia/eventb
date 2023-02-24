json.extract! event, :id, :title, :description, :location, :start_date, :duration, :price, :created_at, :updated_at
json.url event_url(event, format: :json)
