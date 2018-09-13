class DropLootDrops < ActiveRecord::Migration[5.2]
  def change
    drop_table :loot_drops
  end
end
