class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.integer :player_id
      t.integer :user_id
      t.integer :location_id
    end
  end
end
