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

ActiveRecord::Schema.define(version: 2020_05_12_022525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kopi", force: :cascade do |t|
    t.string "name"
  end

  create_table "origin", force: :cascade do |t|
    t.string "location"
    t.string "phone_number"
    t.bigint "kopi_id"
    t.index ["kopi_id"], name: "index_origin_on_kopi_id"
  end

  create_table "roast", force: :cascade do |t|
    t.string "name"
    t.bigint "kopi_id"
    t.index ["kopi_id"], name: "index_roast_on_kopi_id"
  end

end
