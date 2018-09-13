class Location < ApplicationRecord
  has_many :enemies
  has_many :game_sessions
end
