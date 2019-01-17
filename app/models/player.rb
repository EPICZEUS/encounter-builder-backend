class Player < ApplicationRecord
  has_many :player_encounters
  has_many :encounters, through: :player_encounters
end
