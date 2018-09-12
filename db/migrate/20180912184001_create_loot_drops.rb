class CreateLootDrops < ActiveRecord::Migration[5.2]
  def change
    create_table :loot_drops do |t|
      t.integer :location_id
      t.integer :item_id
    end
  end
end
