class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.references :user, foreign_key: true, index: true
      t.string :title, null: false

      t.timestamps
    end
  end
end
