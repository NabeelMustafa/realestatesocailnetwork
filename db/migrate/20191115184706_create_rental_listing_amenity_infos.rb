class CreateRentalListingAmenityInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_listing_amenity_infos do |t|
      t.boolean :essentails
      t.boolean :air_conditioning
      t.boolean :heat
      t.boolean :hair_drryer
      t.boolean :closet
      t.boolean :iron
      t.boolean :tv
      t.boolean :breakfast
      t.boolean :wifi
      t.boolean :fire_ex
      t.boolean :carbon_det
      t.boolean :smoke_det
      t.boolean :first_aid
      t.references :rental_list, foreign_key: true

      t.timestamps
    end
  end
end
