class ChangeColumnF < ActiveRecord::Migration[5.2]
  def change
    rename_column :list_furnitures, :type, :f_type

  end
end
