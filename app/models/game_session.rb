class GameSession < ApplicationRecord
  belongs_to :user
  belongs_to :player
  belongs_to :location
end
