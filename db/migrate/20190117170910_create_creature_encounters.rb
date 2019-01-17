class CreateCreatureEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_encounters do |t|
      t.references :creature, foreign_key: true
      t.references :encounter, foreign_key: true

      t.timestamps
    end
  end
end
