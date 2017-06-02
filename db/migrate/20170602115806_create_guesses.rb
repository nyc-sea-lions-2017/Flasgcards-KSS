class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :card_id, foreign_key: true
      t.integer :round_id, foreign_key: true
      t.string :guess, null: false

      t.timestamps null: false
    end
  end
end
