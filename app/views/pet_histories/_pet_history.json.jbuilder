json.extract! pet_history, :id, :pet_id, :weight, :height, :diagnosis, :created_at, :updated_at
json.url pet_history_url(pet_history, format: :json)
