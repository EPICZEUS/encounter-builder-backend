class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :type
      t.integer :level
      t.integer :hp
      t.integer :ac
      t.integer :speed
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.float :cr
      t.integer :xp

      t.timestamps
    end
  end
end
