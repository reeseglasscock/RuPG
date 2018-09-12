class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :player_id
      t.integer :item_id
      t.integer :amount
    end
  end
end
