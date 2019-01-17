class AddNumberToCreatureEncounters < ActiveRecord::Migration[5.2]
  def change
    add_column :creature_encounters, :number, :integer
  end
end
