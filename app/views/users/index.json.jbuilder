json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :hometown, :citizenship, :gender, :age
  json.url user_url(user, format: :json)
end
