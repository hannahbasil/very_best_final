json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :notes, :user_id, :dish_id, :venue_id
  json.url favorite_url(favorite, format: :json)
end
