class CreateEnemies < ActiveRecord::Migration[5.2]
  def change
    create_table :enemies do |t|
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
      t.integer :weapon_id
      t.integer :spell_id
      t.integer :armor_id
      t.integer :loaction_id
    end
  end
end
