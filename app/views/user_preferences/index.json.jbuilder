json.array!(@user_preferences) do |user_preference|
  json.extract! user_preference, :id
  json.url user_preference_url(user_preference, format: :json)
end
