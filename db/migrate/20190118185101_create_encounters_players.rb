class CreateEncountersPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters_players do |t|
      t.references :player, foreign_key: true
      t.references :encounter, foreign_key: true
    end
  end
end
