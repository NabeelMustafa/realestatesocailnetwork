class CreateFriendLists < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_lists do |t|
      t.string :friend_id
      t.belongs_to :profile

      t.timestamps
    end
  end
end
