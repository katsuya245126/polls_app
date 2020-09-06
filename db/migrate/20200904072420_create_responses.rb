class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :answer_choice, null: false, foreign_key: true

      t.index [:user_id, :answer_choice_id], unique: true
      t.timestamps
    end
  end
end
