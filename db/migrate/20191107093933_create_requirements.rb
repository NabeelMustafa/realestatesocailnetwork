class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
    	t.string :description, null: false
    	t.string :requirement_type, null: false
    	t.boolean :is_mandatory, null: false
    	t.belongs_to :service

      t.timestamps
    end
  end
end
