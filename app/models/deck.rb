class Deck < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  belongs_to :round
  has_many :cards
end
