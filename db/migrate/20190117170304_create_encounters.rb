class CreateEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters do |t|
      t.string :name
      t.text :description
      t.integer :xp

      t.timestamps
    end
  end
end
