json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :addmission_charge, :started_at, :expired_at, :group_id, :venue_id
  json.url event_url(event, format: :json)
end
