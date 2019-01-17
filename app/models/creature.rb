class Creature < ApplicationRecord
  has_many :creature_encounters
  has_many :encounters, through: :creature_encounters
end
