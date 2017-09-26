json.extract! soup, :id, :title, :description, :price, :created_at, :updated_at
json.url soup_url(soup, format: :json)
