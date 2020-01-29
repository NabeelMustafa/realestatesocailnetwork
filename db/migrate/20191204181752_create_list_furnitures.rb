class CreateListFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :list_furnitures do |t|
      t.string :title
      t.string :price
      t.string :url
      t.string :type
      t.string :size
      t.string :material
      t.string :total_no
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
