class Location < ApplicationRecord
  has_many :enemies
  belongs_to :game_session
end
