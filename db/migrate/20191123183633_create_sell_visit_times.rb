class CreateSellVisitTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :sell_visit_times do |t|
      t.date :date
      t.string :start_time
      t.string :end_time
      t.references :list_sell, foreign_key: true

      t.timestamps
    end
  end
end
