class Inventory < ApplicationRecord
  belongs_to :player
  belongs_to :armor
  belongs_to :weapon
  belongs_to :spell
  belongs_to :consumable
end
