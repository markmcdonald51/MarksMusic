json.array!(@groups) do |group|
  json.extract! group, :id, :name, :closed, :created_by_id
  json.url group_url(group, format: :json)
end
