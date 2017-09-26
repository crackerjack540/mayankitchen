json.extract! chicken, :id, :title, :description, :price, :created_at, :updated_at
json.url chicken_url(chicken, format: :json)
