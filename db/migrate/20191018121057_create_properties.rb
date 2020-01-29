class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :property_type
      t.string :offer
      t.string :rental_period
      t.string :property_price
      t.decimal :propert_area
      t.integer :property_room
      t.text :description
      t.string :google_map_address
      t.string :friendly_address
      t.decimal :longtitude
      t.decimal :latitude
      t.string :region
      t.string :building_year
      t.integer :bedrooms
      t.integer :bathrooms
      t.decimal :lot_size
      t.string :parking
      t.string :cooling
      t.string :sewer
      t.string :water
      t.string :exersie_room

      t.timestamps
    end
  end
end
