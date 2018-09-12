class Location < ApplicationRecord
  belongs_to :loot_drop
  belongs_to :enemy
  belongs_to :game_session
end
