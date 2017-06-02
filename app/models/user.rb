class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true

  has_many :rounds
  has_many :guesses
  has_many :decks, through: :rounds

  has_secure_password
end
