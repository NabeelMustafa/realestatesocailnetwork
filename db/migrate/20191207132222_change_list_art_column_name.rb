class ChangeListArtColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :list_arts, :type, :art_type

  end
end
