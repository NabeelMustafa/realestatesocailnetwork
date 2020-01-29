class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|

      t.timestamps
      t.string :title, null: false
      t.string :category, null: false
      t.text :description, null: false
      t.string :tags, array: true
      t.boolean :published, null: false, default: false
      t.belongs_to :user
      
      # add tags in tags and tagging
      # add belongs_to in package
    end
  end
end
