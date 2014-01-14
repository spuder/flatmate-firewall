json.array!(@computers) do |computer|
  json.extract! computer, :id, :mac_address, :user_id
  json.url computer_url(computer, format: :json)
end
