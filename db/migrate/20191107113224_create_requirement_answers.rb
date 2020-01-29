class CreateRequirementAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :requirement_answers do |t|
    	t.string :answer
    	t.belongs_to :requirement

      t.timestamps
    end
  end
end
