json.extract! quesadilla, :id, :title, :description, :price, :created_at, :updated_at
json.url quesadilla_url(quesadilla, format: :json)
