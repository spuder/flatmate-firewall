json.array!(@users) do |user|
  json.extract! user, :id, :name, :bill_paid
  json.url user_url(user, format: :json)
end
