json.extract! client, :id, :name, :user_id, :address, :default_rate, :created_at, :updated_at
json.url client_url(client, format: :json)
