class CreateRentalListingBedrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_bedrooms do |t|
      t.string :type
      t.references :rental_list, foreign_key: true

      t.timestamps
    end
  end
end
