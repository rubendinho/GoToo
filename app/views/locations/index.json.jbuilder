json.array!(@locations) do |location|
  json.extract! location, :id, :city_name, :state_province, :country, :description
  json.url location_url(location, format: :json)
end
