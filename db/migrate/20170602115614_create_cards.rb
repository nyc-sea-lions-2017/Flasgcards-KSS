class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id, foreign_key: true
      t.string :question, null: false
      t.string :correct_answer, null: false
      t.string :difficulty
      t.string :type

      t.timestamps null: false
    end
  end
end
