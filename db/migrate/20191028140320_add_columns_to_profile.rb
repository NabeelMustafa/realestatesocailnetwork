class AddColumnsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :ph_no, :string
    add_column :profiles, :twitter_add, :string
    add_column :profiles, :facebook_add, :string
    add_column :profiles, :linkedin_add, :string
  end
end
