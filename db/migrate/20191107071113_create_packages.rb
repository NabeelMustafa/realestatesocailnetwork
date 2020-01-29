class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|

      t.string :name, null: false
      t.text :description, null: false
      t.integer :delivery_time, null: false
      t.integer :revisions, null: false
      t.decimal :price, null: false
      t.belongs_to :service
    
      t.timestamps
    end
  end
end
