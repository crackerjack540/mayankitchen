json.extract! fajita, :id, :title, :description, :price, :created_at, :updated_at
json.url fajita_url(fajita, format: :json)
