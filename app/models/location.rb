class Location < ApplicationRecord
  belongs_to :loot_drop
  has_many :enemies
  belongs_to :game_session
end
