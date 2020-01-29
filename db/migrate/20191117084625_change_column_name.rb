class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :rental_listing_common_spaces, :type, :space_type

    rename_column :rental_listing_bedrooms, :type, :room_type

  end
end
