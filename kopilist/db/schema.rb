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

ActiveRecord::Schema.define(version: 2019_01_30_084048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_koopis", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "koopi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customers_koopis_on_customer_id"
    t.index ["koopi_id"], name: "index_customers_koopis_on_koopi_id"
  end

  create_table "koopis", force: :cascade do |t|
    t.string "name"
    t.bigint "origin_id"
    t.bigint "roast_id"
    t.bigint "order_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["order_id"], name: "index_koopis_on_order_id"
    t.index ["origin_id"], name: "index_koopis_on_origin_id"
    t.index ["roast_id"], name: "index_koopis_on_roast_id"
    t.index ["user_id"], name: "index_koopis_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "koopi_id"
    t.float "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["koopi_id"], name: "index_orders_on_koopi_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string "location"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roasts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "koopis", "users"
end
