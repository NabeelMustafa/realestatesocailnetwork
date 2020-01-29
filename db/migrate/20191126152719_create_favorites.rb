class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|

      t.timestamps
      t.belongs_to :user
      t.belongs_to :service
    end
  end
end
