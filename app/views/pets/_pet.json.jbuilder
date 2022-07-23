json.extract! pet, :id, :client_id, :name, :race, :bird, :created_at, :updated_at
json.url pet_url(pet, format: :json)
