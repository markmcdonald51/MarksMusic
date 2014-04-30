json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :phone, :email, :contact_name, :description
  json.url venue_url(venue, format: :json)
end
