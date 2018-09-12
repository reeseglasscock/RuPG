class Inventory < ApplicationRecord
  has_many :armors, :weapons, :spells, :consumables
  has_many :players
end
