class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :poll, null: false, foreign_key: true, index: true
      t.string :text, null: false

      t.timestamps
    end
  end
end
