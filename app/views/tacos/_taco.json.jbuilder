json.extract! taco, :id, :title, :description, :price, :created_at, :updated_at
json.url taco_url(taco, format: :json)
