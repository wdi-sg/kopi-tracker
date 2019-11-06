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

ActiveRecord::Schema.define(version: 2019_11_06_175734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
  end

  create_table "customers_kopis", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "kopi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customers_kopis_on_customer_id"
    t.index ["kopi_id"], name: "index_customers_kopis_on_kopi_id"
  end

  create_table "kopis", force: :cascade do |t|
    t.string "name"
    t.text "roast"
    t.bigint "origin_id"
    t.index ["origin_id"], name: "index_kopis_on_origin_id"
  end

  create_table "origins", force: :cascade do |t|
    t.text "location"
    t.text "phone"
  end

  create_table "students", id: :serial, force: :cascade do |t|
    t.text "name"
    t.string "phone", limit: 15
    t.text "email"
  end

end
