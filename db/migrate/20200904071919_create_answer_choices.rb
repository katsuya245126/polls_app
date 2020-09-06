class CreateAnswerChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_choices do |t|
      t.references :question, null: false, foreign_key: true, index: true
      t.string :text, null: false

      t.timestamps
    end
  end
end
