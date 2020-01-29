json.extract! list_sell, :id, :address, :unit, :city, :state, :zip, :price, :virtual_tour_link, :home_type, :no_bed, :no_f_bath, :no_q_bath, :no_h_bath, :finished_sq, :lot_size, :year_built, :remodel_year, :hoa_dues, :basement_area, :garage_area, :description, :website, :my_views, :email, :ph_no, :created_at, :updated_at
json.url list_sell_url(list_sell, format: :json)
