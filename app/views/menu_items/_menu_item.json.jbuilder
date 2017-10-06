json.extract! menu_item, :id, :title, :description, :price, :menu_type, :food_type, :created_at, :updated_at
json.url menu_item_url(menu_item, format: :json)
