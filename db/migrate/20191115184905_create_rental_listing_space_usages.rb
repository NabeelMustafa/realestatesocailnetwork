class CreateRentalListingSpaceUsages < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_space_usages do |t|
      t.boolean :kitchen
      t.boolean :laundry_washer
      t.boolean :laundry_dryer
      t.boolean :parking
      t.boolean :gym
      t.boolean :pool
      t.boolean :hot_tub
      t.boolean :elevator
      t.references :rental_list, foreign_key: true

      t.timestamps
    end
  end
end
