class Player < ApplicationRecord
  has_many :inventories
  has_many :weapons, through: :inventories
  has_many :spells, through: :inventories
  has_many :armors, through: :inventories
  has_many :consumables, through: :inventories
  has_many :game_sessions
end
