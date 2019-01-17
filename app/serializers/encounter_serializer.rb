class EncounterSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :xp

  has_many :players
  has_many :creatures
end
