class CreateOtherDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :other_details do |t|
      t.boolean :centerl
      t.boolean :solar
      t.boolean :wall
      t.boolean :refrigeration
      t.boolean :none
      t.boolean :baseboard
      t.boolean :radiant
      t.boolean :force_air
      t.boolean :heat_pump
      t.boolean :stove
      t.boolean :coal
      t.boolean :electric
      t.boolean :wood
      t.boolean :gas
      t.boolean :oil
      t.boolean :propane
      t.boolean :heat_none
      t.string :heating_other
      t.boolean :lawn
      t.boolean :deck
      t.boolean :dock
      t.boolean :pool
      t.boolean :garden
      t.boolean :water_front
      t.boolean :fence_yard
      t.string :a_other
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
