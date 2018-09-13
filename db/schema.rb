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

ActiveRecord::Schema.define(version: 2018_09_12_234056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.string "armor_type"
    t.integer "defense"
  end

  create_table "consumables", force: :cascade do |t|
    t.string "name"
    t.string "consumable_type"
    t.integer "power"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "stamina"
    t.integer "shade"
    t.integer "strength"
    t.integer "endurance"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "level"
    t.integer "exp"
    t.string "sprite"
    t.integer "weapon_id"
    t.integer "spell_id"
    t.integer "armor_id"
    t.integer "location_id"
  end

  create_table "game_sessions", force: :cascade do |t|
    t.integer "player_id"
    t.integer "user_id"
    t.integer "location_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "player_id"
    t.integer "amount"
    t.integer "armor_id"
    t.integer "weapon_id"
    t.integer "spell_id"
    t.integer "consumable_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "stamina"
    t.integer "shade"
    t.integer "strength"
    t.integer "endurance"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "level"
    t.integer "exp"
    t.string "sprite"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "spell_type"
    t.integer "power"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "weapon_type"
    t.integer "attack"
  end

end
