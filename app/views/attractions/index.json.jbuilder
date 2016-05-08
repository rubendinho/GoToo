json.array!(@attractions) do |attraction|
  json.extract! attraction, :id, :name, :type, :address, :latitude, :longitude, :description
  json.url attraction_url(attraction, format: :json)
end
