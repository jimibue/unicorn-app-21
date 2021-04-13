# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_13_173550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bitz_defs", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bitz_defs_on_user_id"
  end

  create_table "bitzs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bitz_def_id", null: false
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bitz_def_id"], name: "index_bitzs_on_bitz_def_id"
    t.index ["user_id"], name: "index_bitzs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bitz_defs", "users"
  add_foreign_key "bitzs", "bitz_defs"
  add_foreign_key "bitzs", "users"
end
