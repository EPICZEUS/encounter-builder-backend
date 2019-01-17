class ChangeSpeedToString < ActiveRecord::Migration[5.2]
  def change
    change_column :creatures, :speed, :string
  end
end
