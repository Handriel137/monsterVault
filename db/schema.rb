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

ActiveRecord::Schema.define(version: 2018_09_26_014639) do

  create_table "monsters", force: :cascade do |t|
    t.string "name", null: false
    t.string "size"
    t.string "race"
    t.string "subtype"
    t.string "alignment"
    t.string "armor_class"
    t.string "hit_points"
    t.string "hit_dice"
    t.string "speed"
    t.string "strength"
    t.string "dexterity"
    t.string "constitution"
    t.string "intelligence"
    t.string "wisdom"
    t.string "charisma"
    t.string "wisdom_save"
    t.string "damage_vulnerabilities"
    t.string "damage_resistances"
    t.string "damage_immunities"
    t.string "condition_immunities"
    t.string "senses"
    t.string "languages"
    t.string "challenge_rating"
    t.string "constitution_save"
    t.string "perception"
    t.string "history"
    t.string "intelligence_save"
    t.string "religion"
    t.string "medicine"
    t.string "stealth"
    t.string "dexterity_save"
    t.string "charisma_save"
    t.string "persuasion"
    t.string "insight"
    t.string "deception"
    t.string "athletics"
    t.string "arcana"
    t.string "nature"
    t.string "acrobatics"
    t.string "strength_save"
    t.string "survival"
    t.string "investigation"
    t.string "intimidation"
    t.string "performance"
  end

  create_table "monsters_special_abilities", id: false, force: :cascade do |t|
    t.integer "monster_id"
    t.integer "special_ability_id"
    t.index ["monster_id"], name: "index_monsters_special_abilities_on_monster_id"
    t.index ["special_ability_id"], name: "index_monsters_special_abilities_on_special_ability_id"
  end

  create_table "special_abilities", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "attack_bonus"
    t.string "damage_dice"
  end

end
