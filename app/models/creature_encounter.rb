class CreatureEncounter < ApplicationRecord
  belongs_to :creature
  belongs_to :encounter
end
