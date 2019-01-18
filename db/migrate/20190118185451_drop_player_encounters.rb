class DropPlayerEncounters < ActiveRecord::Migration[5.2]
  def change
  	drop_table :player_encounters
  	drop_table :creature_encounters
  end
end
