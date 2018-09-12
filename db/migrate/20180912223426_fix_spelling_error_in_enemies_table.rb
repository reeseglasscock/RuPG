class FixSpellingErrorInEnemiesTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :enemies, :loaction_id, :location_id
  end
end
