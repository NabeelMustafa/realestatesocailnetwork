json.extract! list_furniture, :id, :title, :price, :url, :type, :size, :material, :total_no, :created_at, :updated_at
json.url list_furniture_url(list_furniture, format: :json)
