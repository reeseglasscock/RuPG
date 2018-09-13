class ChangeAllWeaponTypesColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :armors, :type, :armor_type
    rename_column :consumables, :type, :consumable_type
    rename_column :spells, :type, :spell_type
    rename_column :weapons, :type, :weapon_type
  end
end
