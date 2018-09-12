class Weapon < ApplicationRecord
  has_many :inventories
  has_many :enemies
end
