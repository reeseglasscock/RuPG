class CreatePlayersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :health
      t.integer :stamina
      t.integer :shade
      t.integer :strength
      t.integer :endurance
      t.integer :constitution
      t.integer :intelligence
      t.integer :level
      t.integer :exp
      t.string :sprite
    end
  end
end
