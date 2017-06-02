class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :user_id, foreign_key: true
      t.integer :deck_id, foreign_key: true
      t.datetime :date

      t.timestamps null: false
    end
  end
end
