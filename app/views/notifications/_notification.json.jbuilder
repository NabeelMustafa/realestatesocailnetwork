json.extract! notification, :id, :descrition, :created_at, :updated_at
json.url notification_url(notification, format: :json)
