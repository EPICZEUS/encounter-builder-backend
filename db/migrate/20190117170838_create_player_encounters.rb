class CreatePlayerEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :player_encounters do |t|
      t.references :player, foreign_key: true
      t.references :encounter, foreign_key: true

      t.timestamps
    end
  end
end
