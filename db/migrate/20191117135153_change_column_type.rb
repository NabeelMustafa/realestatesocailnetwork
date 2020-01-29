class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :rental_lists, :descritption, :text
  end
end
