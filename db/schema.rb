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

ActiveRecord::Schema.define(version: 20171012114355) do

  create_table "action_entries", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "greenhouse_humidity_sensors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xtreme_farm_bot_id"
    t.index ["xtreme_farm_bot_id"], name: "index_greenhouse_humidity_sensors_on_xtreme_farm_bot_id"
  end

  create_table "greenhouse_temperature_sensors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xtreme_farm_bot_id"
    t.index ["xtreme_farm_bot_id"], name: "index_greenhouse_temperature_sensors_on_xtreme_farm_bot_id"
  end

  create_table "greenhouses", force: :cascade do |t|
    t.integer "turn_on_light_time", default: 7
    t.integer "turn_off_light_time", default: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xtreme_farm_bot_id"
    t.index ["xtreme_farm_bot_id"], name: "index_greenhouses_on_xtreme_farm_bot_id"
  end

  create_table "plant_sectors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "elapsed_time", default: 0
    t.integer "moisture", default: 10
    t.integer "magnesium", default: 500
    t.integer "potassium", default: 500
    t.integer "iron", default: 500
    t.integer "plant_id"
    t.integer "greenhouse_id"
    t.index ["greenhouse_id"], name: "index_plant_sectors_on_greenhouse_id"
    t.index ["plant_id"], name: "index_plant_sectors_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "soil_moisture"
    t.integer "magnesium"
    t.integer "potassium"
    t.integer "iron"
    t.integer "temperature"
    t.integer "humidity"
    t.integer "hours_of_light"
    t.integer "growth_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soil_humidity_sensors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xtreme_farm_bot_id"
    t.index ["xtreme_farm_bot_id"], name: "index_soil_humidity_sensors_on_xtreme_farm_bot_id"
  end

  create_table "soil_nutrients_sensors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xtreme_farm_bot_id"
    t.index ["xtreme_farm_bot_id"], name: "index_soil_nutrients_sensors_on_xtreme_farm_bot_id"
  end

  create_table "xtreme_farm_bots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
