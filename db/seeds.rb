require 'rest-client'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
API = 'http://www.dnd5eapi.co/api/monsters/'


def request(url, id)
  response_string = RestClient.get(url + id.to_s)
  response_hash = JSON.parse(response_string)
  response_hash
end

def db_seed
  monster_id = 1
  while monster_id < 325
    monster_id += 1
    monster_hash = request(API, monster_id.to_s)
    Creature.create(name: monster_hash['name'], creature_type: monster_hash['type'], hp: monster_hash['hit_points'], ac: monster_hash['armor_class'], speed: monster_hash['speed'], str: monster_hash['strength'], dex: monster_hash['dexterity'], con: monster_hash['constitution'], int: monster_hash['intelligence'], wis: monster_hash['wisdom'], cha: monster_hash['charisma'], cr: monster_hash['challenge_rating'])
  end
end

db_seed

# monster_hash = request(API, monster_id.to_s)
#
# Creature.create(name: monster_hash['name'], creature_type: monster_hash['type'], hp: monster_hash['hit_points'], ac: monster_hash['armor_class'], speed: monster_hash['speed'], str: monster_hash['strength'], dex: monster_hash['dexterity'], con: monster_hash['constitution'], int: monster_hash['intelligence'], wis: monster_hash['wisdom'], cha: monster_hash['charisma'], cr: monster_hash['challenge_rating'])
