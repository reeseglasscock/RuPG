class DropItemAttributesAddAttributesToItemTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :item_attributes

    change_table :armors do |t|
      t.string :name
      t.string :type
      t.integer :defense
    end

    change_table :weapons do |t|
      t.string :name
      t.string :type
      t.integer :attack
    end

    change_table :spells do |t|
      t.string :name
      t.string :type
      t.integer :power
    end

    change_table :consumables do |t|
      t.string :name
      t.string :type
      t.integer :power
    end

    remove_column :inventories, :item_id

    change_table :inventories do |t|
      t.integer :armor_id
      t.integer :weapon_id
      t.integer :spell_id
      t.integer :consumable_id
    end
  end
end
