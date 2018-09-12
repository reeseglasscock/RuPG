class Weapon < ApplicationRecord
  has_many :item_attributes, as: :item
  belongs_to :inventory
end
