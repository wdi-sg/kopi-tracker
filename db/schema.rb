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

ActiveRecord::Schema.define(version: 2019_08_13_102333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kopicharts", force: :cascade do |t|
    t.string "kopi_name"
    t.bigint "roast_name_id"
    t.bigint "origin_name_id"
    t.string "price_pergram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_name_id"], name: "index_kopicharts_on_origin_name_id"
    t.index ["roast_name_id"], name: "index_kopicharts_on_roast_name_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string "origin_name"
    t.string "location"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roasts", force: :cascade do |t|
    t.string "roast_name"
    t.string "level"
    t.bigint "kopi_name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kopi_name_id"], name: "index_roasts_on_kopi_name_id"
  end

end
