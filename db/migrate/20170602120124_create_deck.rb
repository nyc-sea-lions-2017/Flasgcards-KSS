class CreateDeck < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :category, null: false
      t.integer :creator_id, foreign_key: true

      t.timestamps null: false
    end
  end
end
