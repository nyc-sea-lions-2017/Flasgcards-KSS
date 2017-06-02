class User < ActiveRecord::Base
 has_many :rounds
 has_many :decks, through: :rounds
 has_many :created_decks, class_name: "Deck", foreign_key: :creator_id
end
