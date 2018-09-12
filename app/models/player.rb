class Player < ApplicationRecord
  has_many :weapons, through :inventory
  has_many :spells, through :inventory
  has_many :armors, through :inventory
  has_many :consumables, through :inventory
  belongs_to :game_session
end
