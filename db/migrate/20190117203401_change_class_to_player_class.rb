class ChangeClassToPlayerClass < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :class, :player_class
  end
end
