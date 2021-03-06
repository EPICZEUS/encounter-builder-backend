# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_18_185451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creatures", force: :cascade do |t|
    t.string "name"
    t.string "creature_type"
    t.integer "level"
    t.integer "hp"
    t.integer "ac"
    t.string "speed"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.float "cr"
    t.integer "xp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creatures_encounters", force: :cascade do |t|
    t.bigint "creature_id"
    t.bigint "encounter_id"
    t.index ["creature_id"], name: "index_creatures_encounters_on_creature_id"
    t.index ["encounter_id"], name: "index_creatures_encounters_on_encounter_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "xp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encounters_players", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "encounter_id"
    t.index ["encounter_id"], name: "index_encounters_players_on_encounter_id"
    t.index ["player_id"], name: "index_encounters_players_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "player_class"
    t.integer "level"
    t.integer "hp"
    t.integer "ac"
    t.string "speed"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "race"
  end

  add_foreign_key "creatures_encounters", "creatures"
  add_foreign_key "creatures_encounters", "encounters"
  add_foreign_key "encounters_players", "encounters"
  add_foreign_key "encounters_players", "players"
end
