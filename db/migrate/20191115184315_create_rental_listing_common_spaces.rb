class CreateRentalListingCommonSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_common_spaces do |t|
      t.string :type
      t.references :rental_list, foreign_key: true

      t.timestamps
    end
  end
end
