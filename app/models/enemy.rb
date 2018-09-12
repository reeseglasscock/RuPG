class Enemy < ApplicationRecord
  belongs_to :weapon
  belongs_to :armor
  belongs_to :spell
  belongs_to :location
end
