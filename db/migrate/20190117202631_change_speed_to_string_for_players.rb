class ChangeSpeedToStringForPlayers < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :speed, :string
  end
end
