class CreateListArts < ActiveRecord::Migration[5.2]
  def change
    create_table :list_arts do |t|
      t.string :art_name
      t.string :type
      t.string :price
      t.string :description
      t.string :size
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
