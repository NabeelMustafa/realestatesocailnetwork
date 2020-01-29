class ChangeNameOfColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :rental_lists, :descritption, :description

  end
end
