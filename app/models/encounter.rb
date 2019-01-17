class Encounter < ApplicationRecord
  has_many :player_encounters
  has_many :players, through: :player_encounters
  has_many :creature_encounters
  has_many :creatures, through: :creature_encounters
end
