class Encounter < ApplicationRecord
  # has_many :player_encounters
  has_and_belongs_to_many :players
  # has_many :creature_encounters
  has_and_belongs_to_many :creatures

  def player_ids(ids)
  	self.players = ids.map {|id| Player.find(id) }
  end

  def creature_ids(ids)
  	self.creatures = ids.map {|id| Creature.find(id) }
  end
end
