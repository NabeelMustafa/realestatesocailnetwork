class CreateRoomDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :room_details do |t|
      t.boolean :dish_washer
      t.boolean :rang_oven
      t.boolean :dryer
      t.boolean :refrigerator
      t.boolean :freezer
      t.boolean :trash_compactor
      t.boolean :garbage_disposal
      t.boolean :washer
      t.boolean :microwave
      t.string :basement_type
      t.string :floor_type
      t.string :room_type
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
