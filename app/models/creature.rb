class Creature < ApplicationRecord
  # has_many :creature_encounters
  has_and_belongs_to_many :encounters
end
