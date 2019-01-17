class AddRaceToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :race, :string
  end
end
