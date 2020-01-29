class CreateSellBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_building_details do |t|
      t.boolean :gated_entry
      t.boolean :living_community
      t.boolean :sport_court
      t.boolean :transport
      t.boolean :door_man
      t.boolean :elevetor
      t.boolean :fitness
      t.string :styel
      t.boolean :brick
      t.boolean :cement
      t.boolean :metal
      t.boolean :shingle
      t.boolean :other
      t.boolean :stone
      t.string :floor_no
      t.string :no_unit
      t.string :no_stories
      t.string :no_parking
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
