class GameSession < ApplicationRecord
  has_many :users
  has_many :players
  has_many :locations
end
