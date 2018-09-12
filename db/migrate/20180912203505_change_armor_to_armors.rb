class ChangeArmorToArmors < ActiveRecord::Migration[5.2]
  def change
    rename_table :armor, :armors
  end
end
