class CreateRentalImages < ActiveRecord::Migration[5.2]
  def change
    create_table :rental_images do |t|
      t.string :url
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
