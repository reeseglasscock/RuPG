class CreateItemTables < ActiveRecord::Migration[5.2]
  def change
    create_table :spells
    create_table :weapons
    create_table :armor
    create_table :consumables 
  end
end
