class ItemAttribute < ApplicationRecord
  belongs_to :item, polymorphic: true
end
