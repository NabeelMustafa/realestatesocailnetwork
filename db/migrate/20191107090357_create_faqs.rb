class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs do |t|
    	t.string :question, null: false
    	t.string :answer, null: false
    	t.belongs_to :service

      t.timestamps
    end
  end
end
