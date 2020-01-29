class CreateRentalListingImages < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_images do |t|
      t.string :url
      t.references :rental_list, foreign_key: true

      t.timestamps
    end
  end
end
