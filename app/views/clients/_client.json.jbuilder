json.extract! client, :id, :name, :address, :mail, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
