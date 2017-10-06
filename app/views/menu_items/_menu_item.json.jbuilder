json.extract! menu_item, :id, :title, :description, :price, :type, :label, :created_at, :updated_at
json.url menu_item_url(menu_item, format: :json)
