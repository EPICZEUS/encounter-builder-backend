class Encounter < ApplicationRecord
  # has_many :player_encounters
  has_and_belongs_to_many :players
  # has_many :creature_encounters
  has_and_belongs_to_many :creatures
end
