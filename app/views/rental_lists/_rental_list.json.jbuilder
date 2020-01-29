json.extract! rental_list, :id, :room_type, :person_capicty, :location, :propert_type, :property_type_cat, :is_dedicated, :guest_no_acc, :beedrooms_no, :bathrooms_no, :address, :city, :postal_code, :state, :country, :descritption, :title, :created_at, :updated_at
json.url rental_list_url(rental_list, format: :json)
