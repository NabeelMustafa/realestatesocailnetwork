json.extract! list_art, :id, :art_name, :type, :price, :description, :size, :url, :created_at, :updated_at
json.url list_art_url(list_art, format: :json)
