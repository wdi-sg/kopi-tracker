class Coffee < ActiveRecord::Migration[5.2]
      def change
               create_table "farms", force: :cascade do |t|
              t.string "origin"
              t.string "location"
              t.text "phone"
              t.datetime "created_at", null: false
              t.datetime "updated_at", null: false
            end

            create_table "kopis", force: :cascade do |t|
              t.string "name"
              t.string "roast"
              t.bigint "farm_id"
              t.datetime "created_at", null: false
              t.datetime "updated_at", null: false
              t.index ["farm_id"], name: "index_kopis_on_farm_id"
          end


      end
end