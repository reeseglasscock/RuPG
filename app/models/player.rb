class Player < ApplicationRecord
  has_many :inventories
  has_many :weapons, through: :inventories
  has_many :spells, through: :inventories
  has_many :armors, through: :inventories
  has_many :consumables, through: :inventories
  has_many :game_sessions
  after_create :add_stats
  validates :name, presence: true
  validates :strength, presence: true
  validates :endurance, presence: true
  validates :constitution, presence: true
  validates :intelligence, presence: true

  def add_stats
    self.update(health: 100, stamina: 100, shade: 100, level: 1, exp: 0)
  end
end
